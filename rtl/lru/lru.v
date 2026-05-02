module agemtx2_update (
  input [1:0] access_way,
  input old_0_1,
  input old_1_0,
  output new_0_1,
  output new_1_0,
  output dummy);  // no trailing comma
  assign new_0_1 = (access_way == 1'd0) ? 1'b1 : (access_way == 1'd1) ? 1'b0 : old_0_1;
  assign new_1_0 = (access_way == 1'd1) ? 1'b1 : (access_way == 1'd0) ? 1'b0 : old_1_0;
endmodule
module agemtx4_update (
  input [2:0] access_way,
  input old_0_1,
  input old_0_2,
  input old_0_3,
  input old_1_0,
  input old_1_2,
  input old_1_3,
  input old_2_0,
  input old_2_1,
  input old_2_3,
  input old_3_0,
  input old_3_1,
  input old_3_2,
  output new_0_1,
  output new_0_2,
  output new_0_3,
  output new_1_0,
  output new_1_2,
  output new_1_3,
  output new_2_0,
  output new_2_1,
  output new_2_3,
  output new_3_0,
  output new_3_1,
  output new_3_2,
  output dummy);  // no trailing comma
  assign new_0_1 = (access_way == 2'd0) ? 1'b1 : (access_way == 2'd1) ? 1'b0 : old_0_1;
  assign new_0_2 = (access_way == 2'd0) ? 1'b1 : (access_way == 2'd2) ? 1'b0 : old_0_2;
  assign new_0_3 = (access_way == 2'd0) ? 1'b1 : (access_way == 2'd3) ? 1'b0 : old_0_3;
  assign new_1_0 = (access_way == 2'd1) ? 1'b1 : (access_way == 2'd0) ? 1'b0 : old_1_0;
  assign new_1_2 = (access_way == 2'd1) ? 1'b1 : (access_way == 2'd2) ? 1'b0 : old_1_2;
  assign new_1_3 = (access_way == 2'd1) ? 1'b1 : (access_way == 2'd3) ? 1'b0 : old_1_3;
  assign new_2_0 = (access_way == 2'd2) ? 1'b1 : (access_way == 2'd0) ? 1'b0 : old_2_0;
  assign new_2_1 = (access_way == 2'd2) ? 1'b1 : (access_way == 2'd1) ? 1'b0 : old_2_1;
  assign new_2_3 = (access_way == 2'd2) ? 1'b1 : (access_way == 2'd3) ? 1'b0 : old_2_3;
  assign new_3_0 = (access_way == 2'd3) ? 1'b1 : (access_way == 2'd0) ? 1'b0 : old_3_0;
  assign new_3_1 = (access_way == 2'd3) ? 1'b1 : (access_way == 2'd1) ? 1'b0 : old_3_1;
  assign new_3_2 = (access_way == 2'd3) ? 1'b1 : (access_way == 2'd2) ? 1'b0 : old_3_2;
endmodule
module agemtx8_update (
  input [3:0] access_way,
  input old_0_1,
  input old_0_2,
  input old_0_3,
  input old_0_4,
  input old_0_5,
  input old_0_6,
  input old_0_7,
  input old_1_0,
  input old_1_2,
  input old_1_3,
  input old_1_4,
  input old_1_5,
  input old_1_6,
  input old_1_7,
  input old_2_0,
  input old_2_1,
  input old_2_3,
  input old_2_4,
  input old_2_5,
  input old_2_6,
  input old_2_7,
  input old_3_0,
  input old_3_1,
  input old_3_2,
  input old_3_4,
  input old_3_5,
  input old_3_6,
  input old_3_7,
  input old_4_0,
  input old_4_1,
  input old_4_2,
  input old_4_3,
  input old_4_5,
  input old_4_6,
  input old_4_7,
  input old_5_0,
  input old_5_1,
  input old_5_2,
  input old_5_3,
  input old_5_4,
  input old_5_6,
  input old_5_7,
  input old_6_0,
  input old_6_1,
  input old_6_2,
  input old_6_3,
  input old_6_4,
  input old_6_5,
  input old_6_7,
  input old_7_0,
  input old_7_1,
  input old_7_2,
  input old_7_3,
  input old_7_4,
  input old_7_5,
  input old_7_6,
  output new_0_1,
  output new_0_2,
  output new_0_3,
  output new_0_4,
  output new_0_5,
  output new_0_6,
  output new_0_7,
  output new_1_0,
  output new_1_2,
  output new_1_3,
  output new_1_4,
  output new_1_5,
  output new_1_6,
  output new_1_7,
  output new_2_0,
  output new_2_1,
  output new_2_3,
  output new_2_4,
  output new_2_5,
  output new_2_6,
  output new_2_7,
  output new_3_0,
  output new_3_1,
  output new_3_2,
  output new_3_4,
  output new_3_5,
  output new_3_6,
  output new_3_7,
  output new_4_0,
  output new_4_1,
  output new_4_2,
  output new_4_3,
  output new_4_5,
  output new_4_6,
  output new_4_7,
  output new_5_0,
  output new_5_1,
  output new_5_2,
  output new_5_3,
  output new_5_4,
  output new_5_6,
  output new_5_7,
  output new_6_0,
  output new_6_1,
  output new_6_2,
  output new_6_3,
  output new_6_4,
  output new_6_5,
  output new_6_7,
  output new_7_0,
  output new_7_1,
  output new_7_2,
  output new_7_3,
  output new_7_4,
  output new_7_5,
  output new_7_6,
  output dummy);  // no trailing comma
  assign new_0_1 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_0_1;
  assign new_0_2 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_0_2;
  assign new_0_3 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_0_3;
  assign new_0_4 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_0_4;
  assign new_0_5 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_0_5;
  assign new_0_6 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_0_6;
  assign new_0_7 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_0_7;
  assign new_1_0 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_1_0;
  assign new_1_2 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_1_2;
  assign new_1_3 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_1_3;
  assign new_1_4 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_1_4;
  assign new_1_5 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_1_5;
  assign new_1_6 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_1_6;
  assign new_1_7 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_1_7;
  assign new_2_0 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_2_0;
  assign new_2_1 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_2_1;
  assign new_2_3 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_2_3;
  assign new_2_4 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_2_4;
  assign new_2_5 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_2_5;
  assign new_2_6 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_2_6;
  assign new_2_7 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_2_7;
  assign new_3_0 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_3_0;
  assign new_3_1 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_3_1;
  assign new_3_2 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_3_2;
  assign new_3_4 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_3_4;
  assign new_3_5 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_3_5;
  assign new_3_6 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_3_6;
  assign new_3_7 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_3_7;
  assign new_4_0 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_4_0;
  assign new_4_1 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_4_1;
  assign new_4_2 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_4_2;
  assign new_4_3 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_4_3;
  assign new_4_5 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_4_5;
  assign new_4_6 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_4_6;
  assign new_4_7 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_4_7;
  assign new_5_0 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_5_0;
  assign new_5_1 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_5_1;
  assign new_5_2 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_5_2;
  assign new_5_3 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_5_3;
  assign new_5_4 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_5_4;
  assign new_5_6 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_5_6;
  assign new_5_7 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_5_7;
  assign new_6_0 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_6_0;
  assign new_6_1 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_6_1;
  assign new_6_2 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_6_2;
  assign new_6_3 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_6_3;
  assign new_6_4 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_6_4;
  assign new_6_5 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_6_5;
  assign new_6_7 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_6_7;
  assign new_7_0 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_7_0;
  assign new_7_1 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_7_1;
  assign new_7_2 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_7_2;
  assign new_7_3 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_7_3;
  assign new_7_4 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_7_4;
  assign new_7_5 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_7_5;
  assign new_7_6 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_7_6;
endmodule
module agemtx16_update (
  input [4:0] access_way,
  input old_0_1,
  input old_0_2,
  input old_0_3,
  input old_0_4,
  input old_0_5,
  input old_0_6,
  input old_0_7,
  input old_0_8,
  input old_0_9,
  input old_0_10,
  input old_0_11,
  input old_0_12,
  input old_0_13,
  input old_0_14,
  input old_0_15,
  input old_1_0,
  input old_1_2,
  input old_1_3,
  input old_1_4,
  input old_1_5,
  input old_1_6,
  input old_1_7,
  input old_1_8,
  input old_1_9,
  input old_1_10,
  input old_1_11,
  input old_1_12,
  input old_1_13,
  input old_1_14,
  input old_1_15,
  input old_2_0,
  input old_2_1,
  input old_2_3,
  input old_2_4,
  input old_2_5,
  input old_2_6,
  input old_2_7,
  input old_2_8,
  input old_2_9,
  input old_2_10,
  input old_2_11,
  input old_2_12,
  input old_2_13,
  input old_2_14,
  input old_2_15,
  input old_3_0,
  input old_3_1,
  input old_3_2,
  input old_3_4,
  input old_3_5,
  input old_3_6,
  input old_3_7,
  input old_3_8,
  input old_3_9,
  input old_3_10,
  input old_3_11,
  input old_3_12,
  input old_3_13,
  input old_3_14,
  input old_3_15,
  input old_4_0,
  input old_4_1,
  input old_4_2,
  input old_4_3,
  input old_4_5,
  input old_4_6,
  input old_4_7,
  input old_4_8,
  input old_4_9,
  input old_4_10,
  input old_4_11,
  input old_4_12,
  input old_4_13,
  input old_4_14,
  input old_4_15,
  input old_5_0,
  input old_5_1,
  input old_5_2,
  input old_5_3,
  input old_5_4,
  input old_5_6,
  input old_5_7,
  input old_5_8,
  input old_5_9,
  input old_5_10,
  input old_5_11,
  input old_5_12,
  input old_5_13,
  input old_5_14,
  input old_5_15,
  input old_6_0,
  input old_6_1,
  input old_6_2,
  input old_6_3,
  input old_6_4,
  input old_6_5,
  input old_6_7,
  input old_6_8,
  input old_6_9,
  input old_6_10,
  input old_6_11,
  input old_6_12,
  input old_6_13,
  input old_6_14,
  input old_6_15,
  input old_7_0,
  input old_7_1,
  input old_7_2,
  input old_7_3,
  input old_7_4,
  input old_7_5,
  input old_7_6,
  input old_7_8,
  input old_7_9,
  input old_7_10,
  input old_7_11,
  input old_7_12,
  input old_7_13,
  input old_7_14,
  input old_7_15,
  input old_8_0,
  input old_8_1,
  input old_8_2,
  input old_8_3,
  input old_8_4,
  input old_8_5,
  input old_8_6,
  input old_8_7,
  input old_8_9,
  input old_8_10,
  input old_8_11,
  input old_8_12,
  input old_8_13,
  input old_8_14,
  input old_8_15,
  input old_9_0,
  input old_9_1,
  input old_9_2,
  input old_9_3,
  input old_9_4,
  input old_9_5,
  input old_9_6,
  input old_9_7,
  input old_9_8,
  input old_9_10,
  input old_9_11,
  input old_9_12,
  input old_9_13,
  input old_9_14,
  input old_9_15,
  input old_10_0,
  input old_10_1,
  input old_10_2,
  input old_10_3,
  input old_10_4,
  input old_10_5,
  input old_10_6,
  input old_10_7,
  input old_10_8,
  input old_10_9,
  input old_10_11,
  input old_10_12,
  input old_10_13,
  input old_10_14,
  input old_10_15,
  input old_11_0,
  input old_11_1,
  input old_11_2,
  input old_11_3,
  input old_11_4,
  input old_11_5,
  input old_11_6,
  input old_11_7,
  input old_11_8,
  input old_11_9,
  input old_11_10,
  input old_11_12,
  input old_11_13,
  input old_11_14,
  input old_11_15,
  input old_12_0,
  input old_12_1,
  input old_12_2,
  input old_12_3,
  input old_12_4,
  input old_12_5,
  input old_12_6,
  input old_12_7,
  input old_12_8,
  input old_12_9,
  input old_12_10,
  input old_12_11,
  input old_12_13,
  input old_12_14,
  input old_12_15,
  input old_13_0,
  input old_13_1,
  input old_13_2,
  input old_13_3,
  input old_13_4,
  input old_13_5,
  input old_13_6,
  input old_13_7,
  input old_13_8,
  input old_13_9,
  input old_13_10,
  input old_13_11,
  input old_13_12,
  input old_13_14,
  input old_13_15,
  input old_14_0,
  input old_14_1,
  input old_14_2,
  input old_14_3,
  input old_14_4,
  input old_14_5,
  input old_14_6,
  input old_14_7,
  input old_14_8,
  input old_14_9,
  input old_14_10,
  input old_14_11,
  input old_14_12,
  input old_14_13,
  input old_14_15,
  input old_15_0,
  input old_15_1,
  input old_15_2,
  input old_15_3,
  input old_15_4,
  input old_15_5,
  input old_15_6,
  input old_15_7,
  input old_15_8,
  input old_15_9,
  input old_15_10,
  input old_15_11,
  input old_15_12,
  input old_15_13,
  input old_15_14,
  output new_0_1,
  output new_0_2,
  output new_0_3,
  output new_0_4,
  output new_0_5,
  output new_0_6,
  output new_0_7,
  output new_0_8,
  output new_0_9,
  output new_0_10,
  output new_0_11,
  output new_0_12,
  output new_0_13,
  output new_0_14,
  output new_0_15,
  output new_1_0,
  output new_1_2,
  output new_1_3,
  output new_1_4,
  output new_1_5,
  output new_1_6,
  output new_1_7,
  output new_1_8,
  output new_1_9,
  output new_1_10,
  output new_1_11,
  output new_1_12,
  output new_1_13,
  output new_1_14,
  output new_1_15,
  output new_2_0,
  output new_2_1,
  output new_2_3,
  output new_2_4,
  output new_2_5,
  output new_2_6,
  output new_2_7,
  output new_2_8,
  output new_2_9,
  output new_2_10,
  output new_2_11,
  output new_2_12,
  output new_2_13,
  output new_2_14,
  output new_2_15,
  output new_3_0,
  output new_3_1,
  output new_3_2,
  output new_3_4,
  output new_3_5,
  output new_3_6,
  output new_3_7,
  output new_3_8,
  output new_3_9,
  output new_3_10,
  output new_3_11,
  output new_3_12,
  output new_3_13,
  output new_3_14,
  output new_3_15,
  output new_4_0,
  output new_4_1,
  output new_4_2,
  output new_4_3,
  output new_4_5,
  output new_4_6,
  output new_4_7,
  output new_4_8,
  output new_4_9,
  output new_4_10,
  output new_4_11,
  output new_4_12,
  output new_4_13,
  output new_4_14,
  output new_4_15,
  output new_5_0,
  output new_5_1,
  output new_5_2,
  output new_5_3,
  output new_5_4,
  output new_5_6,
  output new_5_7,
  output new_5_8,
  output new_5_9,
  output new_5_10,
  output new_5_11,
  output new_5_12,
  output new_5_13,
  output new_5_14,
  output new_5_15,
  output new_6_0,
  output new_6_1,
  output new_6_2,
  output new_6_3,
  output new_6_4,
  output new_6_5,
  output new_6_7,
  output new_6_8,
  output new_6_9,
  output new_6_10,
  output new_6_11,
  output new_6_12,
  output new_6_13,
  output new_6_14,
  output new_6_15,
  output new_7_0,
  output new_7_1,
  output new_7_2,
  output new_7_3,
  output new_7_4,
  output new_7_5,
  output new_7_6,
  output new_7_8,
  output new_7_9,
  output new_7_10,
  output new_7_11,
  output new_7_12,
  output new_7_13,
  output new_7_14,
  output new_7_15,
  output new_8_0,
  output new_8_1,
  output new_8_2,
  output new_8_3,
  output new_8_4,
  output new_8_5,
  output new_8_6,
  output new_8_7,
  output new_8_9,
  output new_8_10,
  output new_8_11,
  output new_8_12,
  output new_8_13,
  output new_8_14,
  output new_8_15,
  output new_9_0,
  output new_9_1,
  output new_9_2,
  output new_9_3,
  output new_9_4,
  output new_9_5,
  output new_9_6,
  output new_9_7,
  output new_9_8,
  output new_9_10,
  output new_9_11,
  output new_9_12,
  output new_9_13,
  output new_9_14,
  output new_9_15,
  output new_10_0,
  output new_10_1,
  output new_10_2,
  output new_10_3,
  output new_10_4,
  output new_10_5,
  output new_10_6,
  output new_10_7,
  output new_10_8,
  output new_10_9,
  output new_10_11,
  output new_10_12,
  output new_10_13,
  output new_10_14,
  output new_10_15,
  output new_11_0,
  output new_11_1,
  output new_11_2,
  output new_11_3,
  output new_11_4,
  output new_11_5,
  output new_11_6,
  output new_11_7,
  output new_11_8,
  output new_11_9,
  output new_11_10,
  output new_11_12,
  output new_11_13,
  output new_11_14,
  output new_11_15,
  output new_12_0,
  output new_12_1,
  output new_12_2,
  output new_12_3,
  output new_12_4,
  output new_12_5,
  output new_12_6,
  output new_12_7,
  output new_12_8,
  output new_12_9,
  output new_12_10,
  output new_12_11,
  output new_12_13,
  output new_12_14,
  output new_12_15,
  output new_13_0,
  output new_13_1,
  output new_13_2,
  output new_13_3,
  output new_13_4,
  output new_13_5,
  output new_13_6,
  output new_13_7,
  output new_13_8,
  output new_13_9,
  output new_13_10,
  output new_13_11,
  output new_13_12,
  output new_13_14,
  output new_13_15,
  output new_14_0,
  output new_14_1,
  output new_14_2,
  output new_14_3,
  output new_14_4,
  output new_14_5,
  output new_14_6,
  output new_14_7,
  output new_14_8,
  output new_14_9,
  output new_14_10,
  output new_14_11,
  output new_14_12,
  output new_14_13,
  output new_14_15,
  output new_15_0,
  output new_15_1,
  output new_15_2,
  output new_15_3,
  output new_15_4,
  output new_15_5,
  output new_15_6,
  output new_15_7,
  output new_15_8,
  output new_15_9,
  output new_15_10,
  output new_15_11,
  output new_15_12,
  output new_15_13,
  output new_15_14,
  output dummy);  // no trailing comma
  assign new_0_1 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_0_1;
  assign new_0_2 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_0_2;
  assign new_0_3 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_0_3;
  assign new_0_4 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_0_4;
  assign new_0_5 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_0_5;
  assign new_0_6 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_0_6;
  assign new_0_7 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_0_7;
  assign new_0_8 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_0_8;
  assign new_0_9 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_0_9;
  assign new_0_10 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_0_10;
  assign new_0_11 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_0_11;
  assign new_0_12 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_0_12;
  assign new_0_13 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_0_13;
  assign new_0_14 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_0_14;
  assign new_0_15 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_0_15;
  assign new_1_0 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_1_0;
  assign new_1_2 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_1_2;
  assign new_1_3 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_1_3;
  assign new_1_4 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_1_4;
  assign new_1_5 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_1_5;
  assign new_1_6 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_1_6;
  assign new_1_7 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_1_7;
  assign new_1_8 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_1_8;
  assign new_1_9 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_1_9;
  assign new_1_10 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_1_10;
  assign new_1_11 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_1_11;
  assign new_1_12 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_1_12;
  assign new_1_13 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_1_13;
  assign new_1_14 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_1_14;
  assign new_1_15 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_1_15;
  assign new_2_0 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_2_0;
  assign new_2_1 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_2_1;
  assign new_2_3 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_2_3;
  assign new_2_4 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_2_4;
  assign new_2_5 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_2_5;
  assign new_2_6 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_2_6;
  assign new_2_7 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_2_7;
  assign new_2_8 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_2_8;
  assign new_2_9 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_2_9;
  assign new_2_10 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_2_10;
  assign new_2_11 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_2_11;
  assign new_2_12 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_2_12;
  assign new_2_13 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_2_13;
  assign new_2_14 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_2_14;
  assign new_2_15 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_2_15;
  assign new_3_0 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_3_0;
  assign new_3_1 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_3_1;
  assign new_3_2 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_3_2;
  assign new_3_4 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_3_4;
  assign new_3_5 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_3_5;
  assign new_3_6 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_3_6;
  assign new_3_7 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_3_7;
  assign new_3_8 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_3_8;
  assign new_3_9 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_3_9;
  assign new_3_10 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_3_10;
  assign new_3_11 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_3_11;
  assign new_3_12 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_3_12;
  assign new_3_13 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_3_13;
  assign new_3_14 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_3_14;
  assign new_3_15 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_3_15;
  assign new_4_0 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_4_0;
  assign new_4_1 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_4_1;
  assign new_4_2 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_4_2;
  assign new_4_3 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_4_3;
  assign new_4_5 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_4_5;
  assign new_4_6 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_4_6;
  assign new_4_7 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_4_7;
  assign new_4_8 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_4_8;
  assign new_4_9 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_4_9;
  assign new_4_10 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_4_10;
  assign new_4_11 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_4_11;
  assign new_4_12 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_4_12;
  assign new_4_13 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_4_13;
  assign new_4_14 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_4_14;
  assign new_4_15 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_4_15;
  assign new_5_0 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_5_0;
  assign new_5_1 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_5_1;
  assign new_5_2 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_5_2;
  assign new_5_3 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_5_3;
  assign new_5_4 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_5_4;
  assign new_5_6 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_5_6;
  assign new_5_7 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_5_7;
  assign new_5_8 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_5_8;
  assign new_5_9 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_5_9;
  assign new_5_10 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_5_10;
  assign new_5_11 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_5_11;
  assign new_5_12 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_5_12;
  assign new_5_13 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_5_13;
  assign new_5_14 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_5_14;
  assign new_5_15 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_5_15;
  assign new_6_0 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_6_0;
  assign new_6_1 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_6_1;
  assign new_6_2 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_6_2;
  assign new_6_3 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_6_3;
  assign new_6_4 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_6_4;
  assign new_6_5 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_6_5;
  assign new_6_7 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_6_7;
  assign new_6_8 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_6_8;
  assign new_6_9 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_6_9;
  assign new_6_10 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_6_10;
  assign new_6_11 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_6_11;
  assign new_6_12 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_6_12;
  assign new_6_13 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_6_13;
  assign new_6_14 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_6_14;
  assign new_6_15 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_6_15;
  assign new_7_0 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_7_0;
  assign new_7_1 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_7_1;
  assign new_7_2 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_7_2;
  assign new_7_3 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_7_3;
  assign new_7_4 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_7_4;
  assign new_7_5 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_7_5;
  assign new_7_6 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_7_6;
  assign new_7_8 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_7_8;
  assign new_7_9 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_7_9;
  assign new_7_10 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_7_10;
  assign new_7_11 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_7_11;
  assign new_7_12 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_7_12;
  assign new_7_13 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_7_13;
  assign new_7_14 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_7_14;
  assign new_7_15 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_7_15;
  assign new_8_0 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_8_0;
  assign new_8_1 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_8_1;
  assign new_8_2 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_8_2;
  assign new_8_3 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_8_3;
  assign new_8_4 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_8_4;
  assign new_8_5 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_8_5;
  assign new_8_6 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_8_6;
  assign new_8_7 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_8_7;
  assign new_8_9 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_8_9;
  assign new_8_10 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_8_10;
  assign new_8_11 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_8_11;
  assign new_8_12 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_8_12;
  assign new_8_13 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_8_13;
  assign new_8_14 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_8_14;
  assign new_8_15 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_8_15;
  assign new_9_0 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_9_0;
  assign new_9_1 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_9_1;
  assign new_9_2 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_9_2;
  assign new_9_3 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_9_3;
  assign new_9_4 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_9_4;
  assign new_9_5 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_9_5;
  assign new_9_6 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_9_6;
  assign new_9_7 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_9_7;
  assign new_9_8 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_9_8;
  assign new_9_10 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_9_10;
  assign new_9_11 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_9_11;
  assign new_9_12 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_9_12;
  assign new_9_13 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_9_13;
  assign new_9_14 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_9_14;
  assign new_9_15 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_9_15;
  assign new_10_0 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_10_0;
  assign new_10_1 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_10_1;
  assign new_10_2 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_10_2;
  assign new_10_3 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_10_3;
  assign new_10_4 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_10_4;
  assign new_10_5 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_10_5;
  assign new_10_6 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_10_6;
  assign new_10_7 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_10_7;
  assign new_10_8 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_10_8;
  assign new_10_9 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_10_9;
  assign new_10_11 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_10_11;
  assign new_10_12 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_10_12;
  assign new_10_13 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_10_13;
  assign new_10_14 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_10_14;
  assign new_10_15 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_10_15;
  assign new_11_0 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_11_0;
  assign new_11_1 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_11_1;
  assign new_11_2 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_11_2;
  assign new_11_3 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_11_3;
  assign new_11_4 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_11_4;
  assign new_11_5 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_11_5;
  assign new_11_6 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_11_6;
  assign new_11_7 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_11_7;
  assign new_11_8 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_11_8;
  assign new_11_9 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_11_9;
  assign new_11_10 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_11_10;
  assign new_11_12 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_11_12;
  assign new_11_13 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_11_13;
  assign new_11_14 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_11_14;
  assign new_11_15 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_11_15;
  assign new_12_0 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_12_0;
  assign new_12_1 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_12_1;
  assign new_12_2 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_12_2;
  assign new_12_3 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_12_3;
  assign new_12_4 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_12_4;
  assign new_12_5 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_12_5;
  assign new_12_6 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_12_6;
  assign new_12_7 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_12_7;
  assign new_12_8 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_12_8;
  assign new_12_9 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_12_9;
  assign new_12_10 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_12_10;
  assign new_12_11 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_12_11;
  assign new_12_13 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_12_13;
  assign new_12_14 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_12_14;
  assign new_12_15 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_12_15;
  assign new_13_0 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_13_0;
  assign new_13_1 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_13_1;
  assign new_13_2 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_13_2;
  assign new_13_3 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_13_3;
  assign new_13_4 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_13_4;
  assign new_13_5 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_13_5;
  assign new_13_6 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_13_6;
  assign new_13_7 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_13_7;
  assign new_13_8 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_13_8;
  assign new_13_9 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_13_9;
  assign new_13_10 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_13_10;
  assign new_13_11 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_13_11;
  assign new_13_12 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_13_12;
  assign new_13_14 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_13_14;
  assign new_13_15 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_13_15;
  assign new_14_0 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_14_0;
  assign new_14_1 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_14_1;
  assign new_14_2 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_14_2;
  assign new_14_3 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_14_3;
  assign new_14_4 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_14_4;
  assign new_14_5 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_14_5;
  assign new_14_6 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_14_6;
  assign new_14_7 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_14_7;
  assign new_14_8 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_14_8;
  assign new_14_9 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_14_9;
  assign new_14_10 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_14_10;
  assign new_14_11 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_14_11;
  assign new_14_12 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_14_12;
  assign new_14_13 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_14_13;
  assign new_14_15 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_14_15;
  assign new_15_0 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_15_0;
  assign new_15_1 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_15_1;
  assign new_15_2 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_15_2;
  assign new_15_3 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_15_3;
  assign new_15_4 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_15_4;
  assign new_15_5 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_15_5;
  assign new_15_6 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_15_6;
  assign new_15_7 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_15_7;
  assign new_15_8 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_15_8;
  assign new_15_9 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_15_9;
  assign new_15_10 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_15_10;
  assign new_15_11 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_15_11;
  assign new_15_12 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_15_12;
  assign new_15_13 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_15_13;
  assign new_15_14 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_15_14;
endmodule
module agemtx2_find (
  input m_0_1,
  input m_1_0,
  output [1:0] lru_way);
  reg [1:0] lru_way_r;
  always @(*) begin
    case (1'b1)
      (~(m_0_1)): lru_way_r = 1'd0;
      (~(m_1_0)): lru_way_r = 1'd1;
      default: lru_way_r = 1'd0;
    endcase
  end
  assign lru_way = lru_way_r;
endmodule
module agemtx4_find (
  input m_0_1,
  input m_0_2,
  input m_0_3,
  input m_1_0,
  input m_1_2,
  input m_1_3,
  input m_2_0,
  input m_2_1,
  input m_2_3,
  input m_3_0,
  input m_3_1,
  input m_3_2,
  output [2:0] lru_way);
  reg [2:0] lru_way_r;
  always @(*) begin
    case (1'b1)
      (~(m_0_1 | m_0_2 | m_0_3)): lru_way_r = 2'd0;
      (~(m_1_0 | m_1_2 | m_1_3)): lru_way_r = 2'd1;
      (~(m_2_0 | m_2_1 | m_2_3)): lru_way_r = 2'd2;
      (~(m_3_0 | m_3_1 | m_3_2)): lru_way_r = 2'd3;
      default: lru_way_r = 2'd0;
    endcase
  end
  assign lru_way = lru_way_r;
endmodule
module agemtx8_find (
  input m_0_1,
  input m_0_2,
  input m_0_3,
  input m_0_4,
  input m_0_5,
  input m_0_6,
  input m_0_7,
  input m_1_0,
  input m_1_2,
  input m_1_3,
  input m_1_4,
  input m_1_5,
  input m_1_6,
  input m_1_7,
  input m_2_0,
  input m_2_1,
  input m_2_3,
  input m_2_4,
  input m_2_5,
  input m_2_6,
  input m_2_7,
  input m_3_0,
  input m_3_1,
  input m_3_2,
  input m_3_4,
  input m_3_5,
  input m_3_6,
  input m_3_7,
  input m_4_0,
  input m_4_1,
  input m_4_2,
  input m_4_3,
  input m_4_5,
  input m_4_6,
  input m_4_7,
  input m_5_0,
  input m_5_1,
  input m_5_2,
  input m_5_3,
  input m_5_4,
  input m_5_6,
  input m_5_7,
  input m_6_0,
  input m_6_1,
  input m_6_2,
  input m_6_3,
  input m_6_4,
  input m_6_5,
  input m_6_7,
  input m_7_0,
  input m_7_1,
  input m_7_2,
  input m_7_3,
  input m_7_4,
  input m_7_5,
  input m_7_6,
  output [3:0] lru_way);
  reg [3:0] lru_way_r;
  always @(*) begin
    case (1'b1)
      (~(m_0_1 | m_0_2 | m_0_3 | m_0_4 | m_0_5 | m_0_6 | m_0_7)): lru_way_r = 3'd0;
      (~(m_1_0 | m_1_2 | m_1_3 | m_1_4 | m_1_5 | m_1_6 | m_1_7)): lru_way_r = 3'd1;
      (~(m_2_0 | m_2_1 | m_2_3 | m_2_4 | m_2_5 | m_2_6 | m_2_7)): lru_way_r = 3'd2;
      (~(m_3_0 | m_3_1 | m_3_2 | m_3_4 | m_3_5 | m_3_6 | m_3_7)): lru_way_r = 3'd3;
      (~(m_4_0 | m_4_1 | m_4_2 | m_4_3 | m_4_5 | m_4_6 | m_4_7)): lru_way_r = 3'd4;
      (~(m_5_0 | m_5_1 | m_5_2 | m_5_3 | m_5_4 | m_5_6 | m_5_7)): lru_way_r = 3'd5;
      (~(m_6_0 | m_6_1 | m_6_2 | m_6_3 | m_6_4 | m_6_5 | m_6_7)): lru_way_r = 3'd6;
      (~(m_7_0 | m_7_1 | m_7_2 | m_7_3 | m_7_4 | m_7_5 | m_7_6)): lru_way_r = 3'd7;
      default: lru_way_r = 3'd0;
    endcase
  end
  assign lru_way = lru_way_r;
endmodule
module agemtx16_find (
  input m_0_1,
  input m_0_2,
  input m_0_3,
  input m_0_4,
  input m_0_5,
  input m_0_6,
  input m_0_7,
  input m_0_8,
  input m_0_9,
  input m_0_10,
  input m_0_11,
  input m_0_12,
  input m_0_13,
  input m_0_14,
  input m_0_15,
  input m_1_0,
  input m_1_2,
  input m_1_3,
  input m_1_4,
  input m_1_5,
  input m_1_6,
  input m_1_7,
  input m_1_8,
  input m_1_9,
  input m_1_10,
  input m_1_11,
  input m_1_12,
  input m_1_13,
  input m_1_14,
  input m_1_15,
  input m_2_0,
  input m_2_1,
  input m_2_3,
  input m_2_4,
  input m_2_5,
  input m_2_6,
  input m_2_7,
  input m_2_8,
  input m_2_9,
  input m_2_10,
  input m_2_11,
  input m_2_12,
  input m_2_13,
  input m_2_14,
  input m_2_15,
  input m_3_0,
  input m_3_1,
  input m_3_2,
  input m_3_4,
  input m_3_5,
  input m_3_6,
  input m_3_7,
  input m_3_8,
  input m_3_9,
  input m_3_10,
  input m_3_11,
  input m_3_12,
  input m_3_13,
  input m_3_14,
  input m_3_15,
  input m_4_0,
  input m_4_1,
  input m_4_2,
  input m_4_3,
  input m_4_5,
  input m_4_6,
  input m_4_7,
  input m_4_8,
  input m_4_9,
  input m_4_10,
  input m_4_11,
  input m_4_12,
  input m_4_13,
  input m_4_14,
  input m_4_15,
  input m_5_0,
  input m_5_1,
  input m_5_2,
  input m_5_3,
  input m_5_4,
  input m_5_6,
  input m_5_7,
  input m_5_8,
  input m_5_9,
  input m_5_10,
  input m_5_11,
  input m_5_12,
  input m_5_13,
  input m_5_14,
  input m_5_15,
  input m_6_0,
  input m_6_1,
  input m_6_2,
  input m_6_3,
  input m_6_4,
  input m_6_5,
  input m_6_7,
  input m_6_8,
  input m_6_9,
  input m_6_10,
  input m_6_11,
  input m_6_12,
  input m_6_13,
  input m_6_14,
  input m_6_15,
  input m_7_0,
  input m_7_1,
  input m_7_2,
  input m_7_3,
  input m_7_4,
  input m_7_5,
  input m_7_6,
  input m_7_8,
  input m_7_9,
  input m_7_10,
  input m_7_11,
  input m_7_12,
  input m_7_13,
  input m_7_14,
  input m_7_15,
  input m_8_0,
  input m_8_1,
  input m_8_2,
  input m_8_3,
  input m_8_4,
  input m_8_5,
  input m_8_6,
  input m_8_7,
  input m_8_9,
  input m_8_10,
  input m_8_11,
  input m_8_12,
  input m_8_13,
  input m_8_14,
  input m_8_15,
  input m_9_0,
  input m_9_1,
  input m_9_2,
  input m_9_3,
  input m_9_4,
  input m_9_5,
  input m_9_6,
  input m_9_7,
  input m_9_8,
  input m_9_10,
  input m_9_11,
  input m_9_12,
  input m_9_13,
  input m_9_14,
  input m_9_15,
  input m_10_0,
  input m_10_1,
  input m_10_2,
  input m_10_3,
  input m_10_4,
  input m_10_5,
  input m_10_6,
  input m_10_7,
  input m_10_8,
  input m_10_9,
  input m_10_11,
  input m_10_12,
  input m_10_13,
  input m_10_14,
  input m_10_15,
  input m_11_0,
  input m_11_1,
  input m_11_2,
  input m_11_3,
  input m_11_4,
  input m_11_5,
  input m_11_6,
  input m_11_7,
  input m_11_8,
  input m_11_9,
  input m_11_10,
  input m_11_12,
  input m_11_13,
  input m_11_14,
  input m_11_15,
  input m_12_0,
  input m_12_1,
  input m_12_2,
  input m_12_3,
  input m_12_4,
  input m_12_5,
  input m_12_6,
  input m_12_7,
  input m_12_8,
  input m_12_9,
  input m_12_10,
  input m_12_11,
  input m_12_13,
  input m_12_14,
  input m_12_15,
  input m_13_0,
  input m_13_1,
  input m_13_2,
  input m_13_3,
  input m_13_4,
  input m_13_5,
  input m_13_6,
  input m_13_7,
  input m_13_8,
  input m_13_9,
  input m_13_10,
  input m_13_11,
  input m_13_12,
  input m_13_14,
  input m_13_15,
  input m_14_0,
  input m_14_1,
  input m_14_2,
  input m_14_3,
  input m_14_4,
  input m_14_5,
  input m_14_6,
  input m_14_7,
  input m_14_8,
  input m_14_9,
  input m_14_10,
  input m_14_11,
  input m_14_12,
  input m_14_13,
  input m_14_15,
  input m_15_0,
  input m_15_1,
  input m_15_2,
  input m_15_3,
  input m_15_4,
  input m_15_5,
  input m_15_6,
  input m_15_7,
  input m_15_8,
  input m_15_9,
  input m_15_10,
  input m_15_11,
  input m_15_12,
  input m_15_13,
  input m_15_14,
  output [4:0] lru_way);
  reg [4:0] lru_way_r;
  always @(*) begin
    case (1'b1)
      (~(m_0_1 | m_0_2 | m_0_3 | m_0_4 | m_0_5 | m_0_6 | m_0_7 | m_0_8 | m_0_9 | m_0_10 | m_0_11 | m_0_12 | m_0_13 | m_0_14 | m_0_15)): lru_way_r = 4'd0;
      (~(m_1_0 | m_1_2 | m_1_3 | m_1_4 | m_1_5 | m_1_6 | m_1_7 | m_1_8 | m_1_9 | m_1_10 | m_1_11 | m_1_12 | m_1_13 | m_1_14 | m_1_15)): lru_way_r = 4'd1;
      (~(m_2_0 | m_2_1 | m_2_3 | m_2_4 | m_2_5 | m_2_6 | m_2_7 | m_2_8 | m_2_9 | m_2_10 | m_2_11 | m_2_12 | m_2_13 | m_2_14 | m_2_15)): lru_way_r = 4'd2;
      (~(m_3_0 | m_3_1 | m_3_2 | m_3_4 | m_3_5 | m_3_6 | m_3_7 | m_3_8 | m_3_9 | m_3_10 | m_3_11 | m_3_12 | m_3_13 | m_3_14 | m_3_15)): lru_way_r = 4'd3;
      (~(m_4_0 | m_4_1 | m_4_2 | m_4_3 | m_4_5 | m_4_6 | m_4_7 | m_4_8 | m_4_9 | m_4_10 | m_4_11 | m_4_12 | m_4_13 | m_4_14 | m_4_15)): lru_way_r = 4'd4;
      (~(m_5_0 | m_5_1 | m_5_2 | m_5_3 | m_5_4 | m_5_6 | m_5_7 | m_5_8 | m_5_9 | m_5_10 | m_5_11 | m_5_12 | m_5_13 | m_5_14 | m_5_15)): lru_way_r = 4'd5;
      (~(m_6_0 | m_6_1 | m_6_2 | m_6_3 | m_6_4 | m_6_5 | m_6_7 | m_6_8 | m_6_9 | m_6_10 | m_6_11 | m_6_12 | m_6_13 | m_6_14 | m_6_15)): lru_way_r = 4'd6;
      (~(m_7_0 | m_7_1 | m_7_2 | m_7_3 | m_7_4 | m_7_5 | m_7_6 | m_7_8 | m_7_9 | m_7_10 | m_7_11 | m_7_12 | m_7_13 | m_7_14 | m_7_15)): lru_way_r = 4'd7;
      (~(m_8_0 | m_8_1 | m_8_2 | m_8_3 | m_8_4 | m_8_5 | m_8_6 | m_8_7 | m_8_9 | m_8_10 | m_8_11 | m_8_12 | m_8_13 | m_8_14 | m_8_15)): lru_way_r = 4'd8;
      (~(m_9_0 | m_9_1 | m_9_2 | m_9_3 | m_9_4 | m_9_5 | m_9_6 | m_9_7 | m_9_8 | m_9_10 | m_9_11 | m_9_12 | m_9_13 | m_9_14 | m_9_15)): lru_way_r = 4'd9;
      (~(m_10_0 | m_10_1 | m_10_2 | m_10_3 | m_10_4 | m_10_5 | m_10_6 | m_10_7 | m_10_8 | m_10_9 | m_10_11 | m_10_12 | m_10_13 | m_10_14 | m_10_15)): lru_way_r = 4'd10;
      (~(m_11_0 | m_11_1 | m_11_2 | m_11_3 | m_11_4 | m_11_5 | m_11_6 | m_11_7 | m_11_8 | m_11_9 | m_11_10 | m_11_12 | m_11_13 | m_11_14 | m_11_15)): lru_way_r = 4'd11;
      (~(m_12_0 | m_12_1 | m_12_2 | m_12_3 | m_12_4 | m_12_5 | m_12_6 | m_12_7 | m_12_8 | m_12_9 | m_12_10 | m_12_11 | m_12_13 | m_12_14 | m_12_15)): lru_way_r = 4'd12;
      (~(m_13_0 | m_13_1 | m_13_2 | m_13_3 | m_13_4 | m_13_5 | m_13_6 | m_13_7 | m_13_8 | m_13_9 | m_13_10 | m_13_11 | m_13_12 | m_13_14 | m_13_15)): lru_way_r = 4'd13;
      (~(m_14_0 | m_14_1 | m_14_2 | m_14_3 | m_14_4 | m_14_5 | m_14_6 | m_14_7 | m_14_8 | m_14_9 | m_14_10 | m_14_11 | m_14_12 | m_14_13 | m_14_15)): lru_way_r = 4'd14;
      (~(m_15_0 | m_15_1 | m_15_2 | m_15_3 | m_15_4 | m_15_5 | m_15_6 | m_15_7 | m_15_8 | m_15_9 | m_15_10 | m_15_11 | m_15_12 | m_15_13 | m_15_14)): lru_way_r = 4'd15;
      default: lru_way_r = 4'd0;
    endcase
  end
  assign lru_way = lru_way_r;
endmodule
module agemtx2_full (
  input old_0_1,
  input old_1_0,
  input [1:0] access_way,
  output [1:0] lru_way);
  wire new_0_1;
  assign new_0_1 = (access_way == 1'd0) ? 1'b1 : (access_way == 1'd1) ? 1'b0 : old_0_1;
  wire new_1_0;
  assign new_1_0 = (access_way == 1'd1) ? 1'b1 : (access_way == 1'd0) ? 1'b0 : old_1_0;
  reg [1:0] lru_r;
  always @(*) begin
    case (1'b1)
      (~(new_0_1)): lru_r = 1'd0;
      (~(new_1_0)): lru_r = 1'd1;
      default: lru_r = 1'd0;
    endcase
  end
  assign lru_way = lru_r;
endmodule
module agemtx4_full (
  input old_0_1,
  input old_0_2,
  input old_0_3,
  input old_1_0,
  input old_1_2,
  input old_1_3,
  input old_2_0,
  input old_2_1,
  input old_2_3,
  input old_3_0,
  input old_3_1,
  input old_3_2,
  input [2:0] access_way,
  output [2:0] lru_way);
  wire new_0_1;
  assign new_0_1 = (access_way == 2'd0) ? 1'b1 : (access_way == 2'd1) ? 1'b0 : old_0_1;
  wire new_0_2;
  assign new_0_2 = (access_way == 2'd0) ? 1'b1 : (access_way == 2'd2) ? 1'b0 : old_0_2;
  wire new_0_3;
  assign new_0_3 = (access_way == 2'd0) ? 1'b1 : (access_way == 2'd3) ? 1'b0 : old_0_3;
  wire new_1_0;
  assign new_1_0 = (access_way == 2'd1) ? 1'b1 : (access_way == 2'd0) ? 1'b0 : old_1_0;
  wire new_1_2;
  assign new_1_2 = (access_way == 2'd1) ? 1'b1 : (access_way == 2'd2) ? 1'b0 : old_1_2;
  wire new_1_3;
  assign new_1_3 = (access_way == 2'd1) ? 1'b1 : (access_way == 2'd3) ? 1'b0 : old_1_3;
  wire new_2_0;
  assign new_2_0 = (access_way == 2'd2) ? 1'b1 : (access_way == 2'd0) ? 1'b0 : old_2_0;
  wire new_2_1;
  assign new_2_1 = (access_way == 2'd2) ? 1'b1 : (access_way == 2'd1) ? 1'b0 : old_2_1;
  wire new_2_3;
  assign new_2_3 = (access_way == 2'd2) ? 1'b1 : (access_way == 2'd3) ? 1'b0 : old_2_3;
  wire new_3_0;
  assign new_3_0 = (access_way == 2'd3) ? 1'b1 : (access_way == 2'd0) ? 1'b0 : old_3_0;
  wire new_3_1;
  assign new_3_1 = (access_way == 2'd3) ? 1'b1 : (access_way == 2'd1) ? 1'b0 : old_3_1;
  wire new_3_2;
  assign new_3_2 = (access_way == 2'd3) ? 1'b1 : (access_way == 2'd2) ? 1'b0 : old_3_2;
  reg [2:0] lru_r;
  always @(*) begin
    case (1'b1)
      (~(new_0_1 | new_0_2 | new_0_3)): lru_r = 2'd0;
      (~(new_1_0 | new_1_2 | new_1_3)): lru_r = 2'd1;
      (~(new_2_0 | new_2_1 | new_2_3)): lru_r = 2'd2;
      (~(new_3_0 | new_3_1 | new_3_2)): lru_r = 2'd3;
      default: lru_r = 2'd0;
    endcase
  end
  assign lru_way = lru_r;
endmodule
module agemtx8_full (
  input old_0_1,
  input old_0_2,
  input old_0_3,
  input old_0_4,
  input old_0_5,
  input old_0_6,
  input old_0_7,
  input old_1_0,
  input old_1_2,
  input old_1_3,
  input old_1_4,
  input old_1_5,
  input old_1_6,
  input old_1_7,
  input old_2_0,
  input old_2_1,
  input old_2_3,
  input old_2_4,
  input old_2_5,
  input old_2_6,
  input old_2_7,
  input old_3_0,
  input old_3_1,
  input old_3_2,
  input old_3_4,
  input old_3_5,
  input old_3_6,
  input old_3_7,
  input old_4_0,
  input old_4_1,
  input old_4_2,
  input old_4_3,
  input old_4_5,
  input old_4_6,
  input old_4_7,
  input old_5_0,
  input old_5_1,
  input old_5_2,
  input old_5_3,
  input old_5_4,
  input old_5_6,
  input old_5_7,
  input old_6_0,
  input old_6_1,
  input old_6_2,
  input old_6_3,
  input old_6_4,
  input old_6_5,
  input old_6_7,
  input old_7_0,
  input old_7_1,
  input old_7_2,
  input old_7_3,
  input old_7_4,
  input old_7_5,
  input old_7_6,
  input [3:0] access_way,
  output [3:0] lru_way);
  wire new_0_1;
  assign new_0_1 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_0_1;
  wire new_0_2;
  assign new_0_2 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_0_2;
  wire new_0_3;
  assign new_0_3 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_0_3;
  wire new_0_4;
  assign new_0_4 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_0_4;
  wire new_0_5;
  assign new_0_5 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_0_5;
  wire new_0_6;
  assign new_0_6 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_0_6;
  wire new_0_7;
  assign new_0_7 = (access_way == 3'd0) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_0_7;
  wire new_1_0;
  assign new_1_0 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_1_0;
  wire new_1_2;
  assign new_1_2 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_1_2;
  wire new_1_3;
  assign new_1_3 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_1_3;
  wire new_1_4;
  assign new_1_4 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_1_4;
  wire new_1_5;
  assign new_1_5 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_1_5;
  wire new_1_6;
  assign new_1_6 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_1_6;
  wire new_1_7;
  assign new_1_7 = (access_way == 3'd1) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_1_7;
  wire new_2_0;
  assign new_2_0 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_2_0;
  wire new_2_1;
  assign new_2_1 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_2_1;
  wire new_2_3;
  assign new_2_3 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_2_3;
  wire new_2_4;
  assign new_2_4 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_2_4;
  wire new_2_5;
  assign new_2_5 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_2_5;
  wire new_2_6;
  assign new_2_6 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_2_6;
  wire new_2_7;
  assign new_2_7 = (access_way == 3'd2) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_2_7;
  wire new_3_0;
  assign new_3_0 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_3_0;
  wire new_3_1;
  assign new_3_1 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_3_1;
  wire new_3_2;
  assign new_3_2 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_3_2;
  wire new_3_4;
  assign new_3_4 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_3_4;
  wire new_3_5;
  assign new_3_5 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_3_5;
  wire new_3_6;
  assign new_3_6 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_3_6;
  wire new_3_7;
  assign new_3_7 = (access_way == 3'd3) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_3_7;
  wire new_4_0;
  assign new_4_0 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_4_0;
  wire new_4_1;
  assign new_4_1 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_4_1;
  wire new_4_2;
  assign new_4_2 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_4_2;
  wire new_4_3;
  assign new_4_3 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_4_3;
  wire new_4_5;
  assign new_4_5 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_4_5;
  wire new_4_6;
  assign new_4_6 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_4_6;
  wire new_4_7;
  assign new_4_7 = (access_way == 3'd4) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_4_7;
  wire new_5_0;
  assign new_5_0 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_5_0;
  wire new_5_1;
  assign new_5_1 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_5_1;
  wire new_5_2;
  assign new_5_2 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_5_2;
  wire new_5_3;
  assign new_5_3 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_5_3;
  wire new_5_4;
  assign new_5_4 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_5_4;
  wire new_5_6;
  assign new_5_6 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_5_6;
  wire new_5_7;
  assign new_5_7 = (access_way == 3'd5) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_5_7;
  wire new_6_0;
  assign new_6_0 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_6_0;
  wire new_6_1;
  assign new_6_1 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_6_1;
  wire new_6_2;
  assign new_6_2 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_6_2;
  wire new_6_3;
  assign new_6_3 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_6_3;
  wire new_6_4;
  assign new_6_4 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_6_4;
  wire new_6_5;
  assign new_6_5 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_6_5;
  wire new_6_7;
  assign new_6_7 = (access_way == 3'd6) ? 1'b1 : (access_way == 3'd7) ? 1'b0 : old_6_7;
  wire new_7_0;
  assign new_7_0 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd0) ? 1'b0 : old_7_0;
  wire new_7_1;
  assign new_7_1 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd1) ? 1'b0 : old_7_1;
  wire new_7_2;
  assign new_7_2 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd2) ? 1'b0 : old_7_2;
  wire new_7_3;
  assign new_7_3 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd3) ? 1'b0 : old_7_3;
  wire new_7_4;
  assign new_7_4 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd4) ? 1'b0 : old_7_4;
  wire new_7_5;
  assign new_7_5 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd5) ? 1'b0 : old_7_5;
  wire new_7_6;
  assign new_7_6 = (access_way == 3'd7) ? 1'b1 : (access_way == 3'd6) ? 1'b0 : old_7_6;
  reg [3:0] lru_r;
  always @(*) begin
    case (1'b1)
      (~(new_0_1 | new_0_2 | new_0_3 | new_0_4 | new_0_5 | new_0_6 | new_0_7)): lru_r = 3'd0;
      (~(new_1_0 | new_1_2 | new_1_3 | new_1_4 | new_1_5 | new_1_6 | new_1_7)): lru_r = 3'd1;
      (~(new_2_0 | new_2_1 | new_2_3 | new_2_4 | new_2_5 | new_2_6 | new_2_7)): lru_r = 3'd2;
      (~(new_3_0 | new_3_1 | new_3_2 | new_3_4 | new_3_5 | new_3_6 | new_3_7)): lru_r = 3'd3;
      (~(new_4_0 | new_4_1 | new_4_2 | new_4_3 | new_4_5 | new_4_6 | new_4_7)): lru_r = 3'd4;
      (~(new_5_0 | new_5_1 | new_5_2 | new_5_3 | new_5_4 | new_5_6 | new_5_7)): lru_r = 3'd5;
      (~(new_6_0 | new_6_1 | new_6_2 | new_6_3 | new_6_4 | new_6_5 | new_6_7)): lru_r = 3'd6;
      (~(new_7_0 | new_7_1 | new_7_2 | new_7_3 | new_7_4 | new_7_5 | new_7_6)): lru_r = 3'd7;
      default: lru_r = 3'd0;
    endcase
  end
  assign lru_way = lru_r;
endmodule
module agemtx16_full (
  input old_0_1,
  input old_0_2,
  input old_0_3,
  input old_0_4,
  input old_0_5,
  input old_0_6,
  input old_0_7,
  input old_0_8,
  input old_0_9,
  input old_0_10,
  input old_0_11,
  input old_0_12,
  input old_0_13,
  input old_0_14,
  input old_0_15,
  input old_1_0,
  input old_1_2,
  input old_1_3,
  input old_1_4,
  input old_1_5,
  input old_1_6,
  input old_1_7,
  input old_1_8,
  input old_1_9,
  input old_1_10,
  input old_1_11,
  input old_1_12,
  input old_1_13,
  input old_1_14,
  input old_1_15,
  input old_2_0,
  input old_2_1,
  input old_2_3,
  input old_2_4,
  input old_2_5,
  input old_2_6,
  input old_2_7,
  input old_2_8,
  input old_2_9,
  input old_2_10,
  input old_2_11,
  input old_2_12,
  input old_2_13,
  input old_2_14,
  input old_2_15,
  input old_3_0,
  input old_3_1,
  input old_3_2,
  input old_3_4,
  input old_3_5,
  input old_3_6,
  input old_3_7,
  input old_3_8,
  input old_3_9,
  input old_3_10,
  input old_3_11,
  input old_3_12,
  input old_3_13,
  input old_3_14,
  input old_3_15,
  input old_4_0,
  input old_4_1,
  input old_4_2,
  input old_4_3,
  input old_4_5,
  input old_4_6,
  input old_4_7,
  input old_4_8,
  input old_4_9,
  input old_4_10,
  input old_4_11,
  input old_4_12,
  input old_4_13,
  input old_4_14,
  input old_4_15,
  input old_5_0,
  input old_5_1,
  input old_5_2,
  input old_5_3,
  input old_5_4,
  input old_5_6,
  input old_5_7,
  input old_5_8,
  input old_5_9,
  input old_5_10,
  input old_5_11,
  input old_5_12,
  input old_5_13,
  input old_5_14,
  input old_5_15,
  input old_6_0,
  input old_6_1,
  input old_6_2,
  input old_6_3,
  input old_6_4,
  input old_6_5,
  input old_6_7,
  input old_6_8,
  input old_6_9,
  input old_6_10,
  input old_6_11,
  input old_6_12,
  input old_6_13,
  input old_6_14,
  input old_6_15,
  input old_7_0,
  input old_7_1,
  input old_7_2,
  input old_7_3,
  input old_7_4,
  input old_7_5,
  input old_7_6,
  input old_7_8,
  input old_7_9,
  input old_7_10,
  input old_7_11,
  input old_7_12,
  input old_7_13,
  input old_7_14,
  input old_7_15,
  input old_8_0,
  input old_8_1,
  input old_8_2,
  input old_8_3,
  input old_8_4,
  input old_8_5,
  input old_8_6,
  input old_8_7,
  input old_8_9,
  input old_8_10,
  input old_8_11,
  input old_8_12,
  input old_8_13,
  input old_8_14,
  input old_8_15,
  input old_9_0,
  input old_9_1,
  input old_9_2,
  input old_9_3,
  input old_9_4,
  input old_9_5,
  input old_9_6,
  input old_9_7,
  input old_9_8,
  input old_9_10,
  input old_9_11,
  input old_9_12,
  input old_9_13,
  input old_9_14,
  input old_9_15,
  input old_10_0,
  input old_10_1,
  input old_10_2,
  input old_10_3,
  input old_10_4,
  input old_10_5,
  input old_10_6,
  input old_10_7,
  input old_10_8,
  input old_10_9,
  input old_10_11,
  input old_10_12,
  input old_10_13,
  input old_10_14,
  input old_10_15,
  input old_11_0,
  input old_11_1,
  input old_11_2,
  input old_11_3,
  input old_11_4,
  input old_11_5,
  input old_11_6,
  input old_11_7,
  input old_11_8,
  input old_11_9,
  input old_11_10,
  input old_11_12,
  input old_11_13,
  input old_11_14,
  input old_11_15,
  input old_12_0,
  input old_12_1,
  input old_12_2,
  input old_12_3,
  input old_12_4,
  input old_12_5,
  input old_12_6,
  input old_12_7,
  input old_12_8,
  input old_12_9,
  input old_12_10,
  input old_12_11,
  input old_12_13,
  input old_12_14,
  input old_12_15,
  input old_13_0,
  input old_13_1,
  input old_13_2,
  input old_13_3,
  input old_13_4,
  input old_13_5,
  input old_13_6,
  input old_13_7,
  input old_13_8,
  input old_13_9,
  input old_13_10,
  input old_13_11,
  input old_13_12,
  input old_13_14,
  input old_13_15,
  input old_14_0,
  input old_14_1,
  input old_14_2,
  input old_14_3,
  input old_14_4,
  input old_14_5,
  input old_14_6,
  input old_14_7,
  input old_14_8,
  input old_14_9,
  input old_14_10,
  input old_14_11,
  input old_14_12,
  input old_14_13,
  input old_14_15,
  input old_15_0,
  input old_15_1,
  input old_15_2,
  input old_15_3,
  input old_15_4,
  input old_15_5,
  input old_15_6,
  input old_15_7,
  input old_15_8,
  input old_15_9,
  input old_15_10,
  input old_15_11,
  input old_15_12,
  input old_15_13,
  input old_15_14,
  input [4:0] access_way,
  output [4:0] lru_way);
  wire new_0_1;
  assign new_0_1 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_0_1;
  wire new_0_2;
  assign new_0_2 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_0_2;
  wire new_0_3;
  assign new_0_3 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_0_3;
  wire new_0_4;
  assign new_0_4 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_0_4;
  wire new_0_5;
  assign new_0_5 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_0_5;
  wire new_0_6;
  assign new_0_6 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_0_6;
  wire new_0_7;
  assign new_0_7 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_0_7;
  wire new_0_8;
  assign new_0_8 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_0_8;
  wire new_0_9;
  assign new_0_9 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_0_9;
  wire new_0_10;
  assign new_0_10 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_0_10;
  wire new_0_11;
  assign new_0_11 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_0_11;
  wire new_0_12;
  assign new_0_12 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_0_12;
  wire new_0_13;
  assign new_0_13 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_0_13;
  wire new_0_14;
  assign new_0_14 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_0_14;
  wire new_0_15;
  assign new_0_15 = (access_way == 4'd0) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_0_15;
  wire new_1_0;
  assign new_1_0 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_1_0;
  wire new_1_2;
  assign new_1_2 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_1_2;
  wire new_1_3;
  assign new_1_3 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_1_3;
  wire new_1_4;
  assign new_1_4 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_1_4;
  wire new_1_5;
  assign new_1_5 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_1_5;
  wire new_1_6;
  assign new_1_6 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_1_6;
  wire new_1_7;
  assign new_1_7 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_1_7;
  wire new_1_8;
  assign new_1_8 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_1_8;
  wire new_1_9;
  assign new_1_9 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_1_9;
  wire new_1_10;
  assign new_1_10 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_1_10;
  wire new_1_11;
  assign new_1_11 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_1_11;
  wire new_1_12;
  assign new_1_12 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_1_12;
  wire new_1_13;
  assign new_1_13 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_1_13;
  wire new_1_14;
  assign new_1_14 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_1_14;
  wire new_1_15;
  assign new_1_15 = (access_way == 4'd1) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_1_15;
  wire new_2_0;
  assign new_2_0 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_2_0;
  wire new_2_1;
  assign new_2_1 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_2_1;
  wire new_2_3;
  assign new_2_3 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_2_3;
  wire new_2_4;
  assign new_2_4 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_2_4;
  wire new_2_5;
  assign new_2_5 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_2_5;
  wire new_2_6;
  assign new_2_6 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_2_6;
  wire new_2_7;
  assign new_2_7 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_2_7;
  wire new_2_8;
  assign new_2_8 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_2_8;
  wire new_2_9;
  assign new_2_9 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_2_9;
  wire new_2_10;
  assign new_2_10 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_2_10;
  wire new_2_11;
  assign new_2_11 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_2_11;
  wire new_2_12;
  assign new_2_12 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_2_12;
  wire new_2_13;
  assign new_2_13 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_2_13;
  wire new_2_14;
  assign new_2_14 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_2_14;
  wire new_2_15;
  assign new_2_15 = (access_way == 4'd2) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_2_15;
  wire new_3_0;
  assign new_3_0 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_3_0;
  wire new_3_1;
  assign new_3_1 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_3_1;
  wire new_3_2;
  assign new_3_2 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_3_2;
  wire new_3_4;
  assign new_3_4 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_3_4;
  wire new_3_5;
  assign new_3_5 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_3_5;
  wire new_3_6;
  assign new_3_6 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_3_6;
  wire new_3_7;
  assign new_3_7 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_3_7;
  wire new_3_8;
  assign new_3_8 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_3_8;
  wire new_3_9;
  assign new_3_9 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_3_9;
  wire new_3_10;
  assign new_3_10 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_3_10;
  wire new_3_11;
  assign new_3_11 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_3_11;
  wire new_3_12;
  assign new_3_12 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_3_12;
  wire new_3_13;
  assign new_3_13 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_3_13;
  wire new_3_14;
  assign new_3_14 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_3_14;
  wire new_3_15;
  assign new_3_15 = (access_way == 4'd3) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_3_15;
  wire new_4_0;
  assign new_4_0 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_4_0;
  wire new_4_1;
  assign new_4_1 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_4_1;
  wire new_4_2;
  assign new_4_2 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_4_2;
  wire new_4_3;
  assign new_4_3 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_4_3;
  wire new_4_5;
  assign new_4_5 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_4_5;
  wire new_4_6;
  assign new_4_6 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_4_6;
  wire new_4_7;
  assign new_4_7 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_4_7;
  wire new_4_8;
  assign new_4_8 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_4_8;
  wire new_4_9;
  assign new_4_9 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_4_9;
  wire new_4_10;
  assign new_4_10 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_4_10;
  wire new_4_11;
  assign new_4_11 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_4_11;
  wire new_4_12;
  assign new_4_12 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_4_12;
  wire new_4_13;
  assign new_4_13 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_4_13;
  wire new_4_14;
  assign new_4_14 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_4_14;
  wire new_4_15;
  assign new_4_15 = (access_way == 4'd4) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_4_15;
  wire new_5_0;
  assign new_5_0 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_5_0;
  wire new_5_1;
  assign new_5_1 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_5_1;
  wire new_5_2;
  assign new_5_2 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_5_2;
  wire new_5_3;
  assign new_5_3 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_5_3;
  wire new_5_4;
  assign new_5_4 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_5_4;
  wire new_5_6;
  assign new_5_6 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_5_6;
  wire new_5_7;
  assign new_5_7 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_5_7;
  wire new_5_8;
  assign new_5_8 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_5_8;
  wire new_5_9;
  assign new_5_9 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_5_9;
  wire new_5_10;
  assign new_5_10 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_5_10;
  wire new_5_11;
  assign new_5_11 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_5_11;
  wire new_5_12;
  assign new_5_12 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_5_12;
  wire new_5_13;
  assign new_5_13 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_5_13;
  wire new_5_14;
  assign new_5_14 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_5_14;
  wire new_5_15;
  assign new_5_15 = (access_way == 4'd5) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_5_15;
  wire new_6_0;
  assign new_6_0 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_6_0;
  wire new_6_1;
  assign new_6_1 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_6_1;
  wire new_6_2;
  assign new_6_2 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_6_2;
  wire new_6_3;
  assign new_6_3 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_6_3;
  wire new_6_4;
  assign new_6_4 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_6_4;
  wire new_6_5;
  assign new_6_5 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_6_5;
  wire new_6_7;
  assign new_6_7 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_6_7;
  wire new_6_8;
  assign new_6_8 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_6_8;
  wire new_6_9;
  assign new_6_9 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_6_9;
  wire new_6_10;
  assign new_6_10 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_6_10;
  wire new_6_11;
  assign new_6_11 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_6_11;
  wire new_6_12;
  assign new_6_12 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_6_12;
  wire new_6_13;
  assign new_6_13 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_6_13;
  wire new_6_14;
  assign new_6_14 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_6_14;
  wire new_6_15;
  assign new_6_15 = (access_way == 4'd6) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_6_15;
  wire new_7_0;
  assign new_7_0 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_7_0;
  wire new_7_1;
  assign new_7_1 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_7_1;
  wire new_7_2;
  assign new_7_2 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_7_2;
  wire new_7_3;
  assign new_7_3 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_7_3;
  wire new_7_4;
  assign new_7_4 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_7_4;
  wire new_7_5;
  assign new_7_5 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_7_5;
  wire new_7_6;
  assign new_7_6 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_7_6;
  wire new_7_8;
  assign new_7_8 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_7_8;
  wire new_7_9;
  assign new_7_9 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_7_9;
  wire new_7_10;
  assign new_7_10 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_7_10;
  wire new_7_11;
  assign new_7_11 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_7_11;
  wire new_7_12;
  assign new_7_12 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_7_12;
  wire new_7_13;
  assign new_7_13 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_7_13;
  wire new_7_14;
  assign new_7_14 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_7_14;
  wire new_7_15;
  assign new_7_15 = (access_way == 4'd7) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_7_15;
  wire new_8_0;
  assign new_8_0 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_8_0;
  wire new_8_1;
  assign new_8_1 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_8_1;
  wire new_8_2;
  assign new_8_2 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_8_2;
  wire new_8_3;
  assign new_8_3 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_8_3;
  wire new_8_4;
  assign new_8_4 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_8_4;
  wire new_8_5;
  assign new_8_5 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_8_5;
  wire new_8_6;
  assign new_8_6 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_8_6;
  wire new_8_7;
  assign new_8_7 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_8_7;
  wire new_8_9;
  assign new_8_9 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_8_9;
  wire new_8_10;
  assign new_8_10 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_8_10;
  wire new_8_11;
  assign new_8_11 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_8_11;
  wire new_8_12;
  assign new_8_12 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_8_12;
  wire new_8_13;
  assign new_8_13 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_8_13;
  wire new_8_14;
  assign new_8_14 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_8_14;
  wire new_8_15;
  assign new_8_15 = (access_way == 4'd8) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_8_15;
  wire new_9_0;
  assign new_9_0 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_9_0;
  wire new_9_1;
  assign new_9_1 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_9_1;
  wire new_9_2;
  assign new_9_2 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_9_2;
  wire new_9_3;
  assign new_9_3 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_9_3;
  wire new_9_4;
  assign new_9_4 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_9_4;
  wire new_9_5;
  assign new_9_5 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_9_5;
  wire new_9_6;
  assign new_9_6 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_9_6;
  wire new_9_7;
  assign new_9_7 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_9_7;
  wire new_9_8;
  assign new_9_8 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_9_8;
  wire new_9_10;
  assign new_9_10 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_9_10;
  wire new_9_11;
  assign new_9_11 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_9_11;
  wire new_9_12;
  assign new_9_12 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_9_12;
  wire new_9_13;
  assign new_9_13 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_9_13;
  wire new_9_14;
  assign new_9_14 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_9_14;
  wire new_9_15;
  assign new_9_15 = (access_way == 4'd9) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_9_15;
  wire new_10_0;
  assign new_10_0 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_10_0;
  wire new_10_1;
  assign new_10_1 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_10_1;
  wire new_10_2;
  assign new_10_2 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_10_2;
  wire new_10_3;
  assign new_10_3 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_10_3;
  wire new_10_4;
  assign new_10_4 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_10_4;
  wire new_10_5;
  assign new_10_5 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_10_5;
  wire new_10_6;
  assign new_10_6 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_10_6;
  wire new_10_7;
  assign new_10_7 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_10_7;
  wire new_10_8;
  assign new_10_8 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_10_8;
  wire new_10_9;
  assign new_10_9 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_10_9;
  wire new_10_11;
  assign new_10_11 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_10_11;
  wire new_10_12;
  assign new_10_12 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_10_12;
  wire new_10_13;
  assign new_10_13 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_10_13;
  wire new_10_14;
  assign new_10_14 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_10_14;
  wire new_10_15;
  assign new_10_15 = (access_way == 4'd10) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_10_15;
  wire new_11_0;
  assign new_11_0 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_11_0;
  wire new_11_1;
  assign new_11_1 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_11_1;
  wire new_11_2;
  assign new_11_2 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_11_2;
  wire new_11_3;
  assign new_11_3 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_11_3;
  wire new_11_4;
  assign new_11_4 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_11_4;
  wire new_11_5;
  assign new_11_5 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_11_5;
  wire new_11_6;
  assign new_11_6 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_11_6;
  wire new_11_7;
  assign new_11_7 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_11_7;
  wire new_11_8;
  assign new_11_8 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_11_8;
  wire new_11_9;
  assign new_11_9 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_11_9;
  wire new_11_10;
  assign new_11_10 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_11_10;
  wire new_11_12;
  assign new_11_12 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_11_12;
  wire new_11_13;
  assign new_11_13 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_11_13;
  wire new_11_14;
  assign new_11_14 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_11_14;
  wire new_11_15;
  assign new_11_15 = (access_way == 4'd11) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_11_15;
  wire new_12_0;
  assign new_12_0 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_12_0;
  wire new_12_1;
  assign new_12_1 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_12_1;
  wire new_12_2;
  assign new_12_2 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_12_2;
  wire new_12_3;
  assign new_12_3 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_12_3;
  wire new_12_4;
  assign new_12_4 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_12_4;
  wire new_12_5;
  assign new_12_5 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_12_5;
  wire new_12_6;
  assign new_12_6 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_12_6;
  wire new_12_7;
  assign new_12_7 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_12_7;
  wire new_12_8;
  assign new_12_8 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_12_8;
  wire new_12_9;
  assign new_12_9 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_12_9;
  wire new_12_10;
  assign new_12_10 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_12_10;
  wire new_12_11;
  assign new_12_11 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_12_11;
  wire new_12_13;
  assign new_12_13 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_12_13;
  wire new_12_14;
  assign new_12_14 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_12_14;
  wire new_12_15;
  assign new_12_15 = (access_way == 4'd12) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_12_15;
  wire new_13_0;
  assign new_13_0 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_13_0;
  wire new_13_1;
  assign new_13_1 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_13_1;
  wire new_13_2;
  assign new_13_2 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_13_2;
  wire new_13_3;
  assign new_13_3 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_13_3;
  wire new_13_4;
  assign new_13_4 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_13_4;
  wire new_13_5;
  assign new_13_5 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_13_5;
  wire new_13_6;
  assign new_13_6 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_13_6;
  wire new_13_7;
  assign new_13_7 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_13_7;
  wire new_13_8;
  assign new_13_8 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_13_8;
  wire new_13_9;
  assign new_13_9 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_13_9;
  wire new_13_10;
  assign new_13_10 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_13_10;
  wire new_13_11;
  assign new_13_11 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_13_11;
  wire new_13_12;
  assign new_13_12 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_13_12;
  wire new_13_14;
  assign new_13_14 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_13_14;
  wire new_13_15;
  assign new_13_15 = (access_way == 4'd13) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_13_15;
  wire new_14_0;
  assign new_14_0 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_14_0;
  wire new_14_1;
  assign new_14_1 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_14_1;
  wire new_14_2;
  assign new_14_2 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_14_2;
  wire new_14_3;
  assign new_14_3 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_14_3;
  wire new_14_4;
  assign new_14_4 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_14_4;
  wire new_14_5;
  assign new_14_5 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_14_5;
  wire new_14_6;
  assign new_14_6 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_14_6;
  wire new_14_7;
  assign new_14_7 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_14_7;
  wire new_14_8;
  assign new_14_8 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_14_8;
  wire new_14_9;
  assign new_14_9 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_14_9;
  wire new_14_10;
  assign new_14_10 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_14_10;
  wire new_14_11;
  assign new_14_11 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_14_11;
  wire new_14_12;
  assign new_14_12 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_14_12;
  wire new_14_13;
  assign new_14_13 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_14_13;
  wire new_14_15;
  assign new_14_15 = (access_way == 4'd14) ? 1'b1 : (access_way == 4'd15) ? 1'b0 : old_14_15;
  wire new_15_0;
  assign new_15_0 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd0) ? 1'b0 : old_15_0;
  wire new_15_1;
  assign new_15_1 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd1) ? 1'b0 : old_15_1;
  wire new_15_2;
  assign new_15_2 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd2) ? 1'b0 : old_15_2;
  wire new_15_3;
  assign new_15_3 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd3) ? 1'b0 : old_15_3;
  wire new_15_4;
  assign new_15_4 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd4) ? 1'b0 : old_15_4;
  wire new_15_5;
  assign new_15_5 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd5) ? 1'b0 : old_15_5;
  wire new_15_6;
  assign new_15_6 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd6) ? 1'b0 : old_15_6;
  wire new_15_7;
  assign new_15_7 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd7) ? 1'b0 : old_15_7;
  wire new_15_8;
  assign new_15_8 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd8) ? 1'b0 : old_15_8;
  wire new_15_9;
  assign new_15_9 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd9) ? 1'b0 : old_15_9;
  wire new_15_10;
  assign new_15_10 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd10) ? 1'b0 : old_15_10;
  wire new_15_11;
  assign new_15_11 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd11) ? 1'b0 : old_15_11;
  wire new_15_12;
  assign new_15_12 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd12) ? 1'b0 : old_15_12;
  wire new_15_13;
  assign new_15_13 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd13) ? 1'b0 : old_15_13;
  wire new_15_14;
  assign new_15_14 = (access_way == 4'd15) ? 1'b1 : (access_way == 4'd14) ? 1'b0 : old_15_14;
  reg [4:0] lru_r;
  always @(*) begin
    case (1'b1)
      (~(new_0_1 | new_0_2 | new_0_3 | new_0_4 | new_0_5 | new_0_6 | new_0_7 | new_0_8 | new_0_9 | new_0_10 | new_0_11 | new_0_12 | new_0_13 | new_0_14 | new_0_15)): lru_r = 4'd0;
      (~(new_1_0 | new_1_2 | new_1_3 | new_1_4 | new_1_5 | new_1_6 | new_1_7 | new_1_8 | new_1_9 | new_1_10 | new_1_11 | new_1_12 | new_1_13 | new_1_14 | new_1_15)): lru_r = 4'd1;
      (~(new_2_0 | new_2_1 | new_2_3 | new_2_4 | new_2_5 | new_2_6 | new_2_7 | new_2_8 | new_2_9 | new_2_10 | new_2_11 | new_2_12 | new_2_13 | new_2_14 | new_2_15)): lru_r = 4'd2;
      (~(new_3_0 | new_3_1 | new_3_2 | new_3_4 | new_3_5 | new_3_6 | new_3_7 | new_3_8 | new_3_9 | new_3_10 | new_3_11 | new_3_12 | new_3_13 | new_3_14 | new_3_15)): lru_r = 4'd3;
      (~(new_4_0 | new_4_1 | new_4_2 | new_4_3 | new_4_5 | new_4_6 | new_4_7 | new_4_8 | new_4_9 | new_4_10 | new_4_11 | new_4_12 | new_4_13 | new_4_14 | new_4_15)): lru_r = 4'd4;
      (~(new_5_0 | new_5_1 | new_5_2 | new_5_3 | new_5_4 | new_5_6 | new_5_7 | new_5_8 | new_5_9 | new_5_10 | new_5_11 | new_5_12 | new_5_13 | new_5_14 | new_5_15)): lru_r = 4'd5;
      (~(new_6_0 | new_6_1 | new_6_2 | new_6_3 | new_6_4 | new_6_5 | new_6_7 | new_6_8 | new_6_9 | new_6_10 | new_6_11 | new_6_12 | new_6_13 | new_6_14 | new_6_15)): lru_r = 4'd6;
      (~(new_7_0 | new_7_1 | new_7_2 | new_7_3 | new_7_4 | new_7_5 | new_7_6 | new_7_8 | new_7_9 | new_7_10 | new_7_11 | new_7_12 | new_7_13 | new_7_14 | new_7_15)): lru_r = 4'd7;
      (~(new_8_0 | new_8_1 | new_8_2 | new_8_3 | new_8_4 | new_8_5 | new_8_6 | new_8_7 | new_8_9 | new_8_10 | new_8_11 | new_8_12 | new_8_13 | new_8_14 | new_8_15)): lru_r = 4'd8;
      (~(new_9_0 | new_9_1 | new_9_2 | new_9_3 | new_9_4 | new_9_5 | new_9_6 | new_9_7 | new_9_8 | new_9_10 | new_9_11 | new_9_12 | new_9_13 | new_9_14 | new_9_15)): lru_r = 4'd9;
      (~(new_10_0 | new_10_1 | new_10_2 | new_10_3 | new_10_4 | new_10_5 | new_10_6 | new_10_7 | new_10_8 | new_10_9 | new_10_11 | new_10_12 | new_10_13 | new_10_14 | new_10_15)): lru_r = 4'd10;
      (~(new_11_0 | new_11_1 | new_11_2 | new_11_3 | new_11_4 | new_11_5 | new_11_6 | new_11_7 | new_11_8 | new_11_9 | new_11_10 | new_11_12 | new_11_13 | new_11_14 | new_11_15)): lru_r = 4'd11;
      (~(new_12_0 | new_12_1 | new_12_2 | new_12_3 | new_12_4 | new_12_5 | new_12_6 | new_12_7 | new_12_8 | new_12_9 | new_12_10 | new_12_11 | new_12_13 | new_12_14 | new_12_15)): lru_r = 4'd12;
      (~(new_13_0 | new_13_1 | new_13_2 | new_13_3 | new_13_4 | new_13_5 | new_13_6 | new_13_7 | new_13_8 | new_13_9 | new_13_10 | new_13_11 | new_13_12 | new_13_14 | new_13_15)): lru_r = 4'd13;
      (~(new_14_0 | new_14_1 | new_14_2 | new_14_3 | new_14_4 | new_14_5 | new_14_6 | new_14_7 | new_14_8 | new_14_9 | new_14_10 | new_14_11 | new_14_12 | new_14_13 | new_14_15)): lru_r = 4'd14;
      (~(new_15_0 | new_15_1 | new_15_2 | new_15_3 | new_15_4 | new_15_5 | new_15_6 | new_15_7 | new_15_8 | new_15_9 | new_15_10 | new_15_11 | new_15_12 | new_15_13 | new_15_14)): lru_r = 4'd15;
      default: lru_r = 4'd0;
    endcase
  end
  assign lru_way = lru_r;
endmodule
module plru4_update (input [2:0] access_way, input [2:0] old_bits, output [2:0] new_bits);
  assign new_bits[2] = ~access_way[1];
  assign new_bits[1] = (access_way[1] == 1'b1) ? ~access_way[0] : old_bits[1];
  assign new_bits[0] = (access_way[1] == 1'b0) ? ~access_way[0] : old_bits[0];
endmodule
module plru8_update (input [3:0] access_way, input [6:0] old_bits, output [6:0] new_bits);
  assign new_bits[6] = ~access_way[2];
  assign new_bits[5] = (access_way[2] == 1'b1) ? ~access_way[1] : old_bits[5];
  assign new_bits[4] = (access_way[2] == 1'b0) ? ~access_way[1] : old_bits[4];
  assign new_bits[3] = (access_way[2:1] == 2'b00) ? ~access_way[0] : old_bits[3];
  assign new_bits[2] = (access_way[2:1] == 2'b01) ? ~access_way[0] : old_bits[2];
  assign new_bits[1] = (access_way[2:1] == 2'b10) ? ~access_way[0] : old_bits[1];
  assign new_bits[0] = (access_way[2:1] == 2'b11) ? ~access_way[0] : old_bits[0];
endmodule
module plru16_update (input [4:0] access_way, input [14:0] old_bits, output [14:0] new_bits);
  assign new_bits[14] = ~access_way[3];
  assign new_bits[13] = (access_way[3] == 1'b1) ? ~access_way[2] : old_bits[13];
  assign new_bits[12] = (access_way[3] == 1'b0) ? ~access_way[2] : old_bits[12];
  assign new_bits[11] = (access_way[3:2] == 2'b00) ? ~access_way[1] : old_bits[11];
  assign new_bits[10] = (access_way[3:2] == 2'b01) ? ~access_way[1] : old_bits[10];
  assign new_bits[9]  = (access_way[3:2] == 2'b10) ? ~access_way[1] : old_bits[9];
  assign new_bits[8]  = (access_way[3:2] == 2'b11) ? ~access_way[1] : old_bits[8];
  assign new_bits[7] = (access_way[3:1] == 3'b000) ? ~access_way[0] : old_bits[7];
  assign new_bits[6] = (access_way[3:1] == 3'b001) ? ~access_way[0] : old_bits[6];
  assign new_bits[5] = (access_way[3:1] == 3'b010) ? ~access_way[0] : old_bits[5];
  assign new_bits[4] = (access_way[3:1] == 3'b011) ? ~access_way[0] : old_bits[4];
  assign new_bits[3] = (access_way[3:1] == 3'b100) ? ~access_way[0] : old_bits[3];
  assign new_bits[2] = (access_way[3:1] == 3'b101) ? ~access_way[0] : old_bits[2];
  assign new_bits[1] = (access_way[3:1] == 3'b110) ? ~access_way[0] : old_bits[1];
  assign new_bits[0] = (access_way[3:1] == 3'b111) ? ~access_way[0] : old_bits[0];
endmodule
module plru4_find (input [2:0] bits, output [2:0] replace_way);
  wire [1:0] left = bits[0] ? 2'd1 : 2'd0;
  wire [1:0] right = bits[1] ? 2'd3 : 2'd2;
  assign replace_way = bits[2] ? right : left;
endmodule
module plru8_find (input [6:0] bits, output [3:0] replace_way);
  wire [1:0] q0 = bits[3] ? 2'd1 : 2'd0;
  wire [1:0] q1 = bits[2] ? 2'd3 : 2'd2;
  wire [1:0] q2 = bits[1] ? 2'd5 : 2'd4;
  wire [1:0] q3 = bits[0] ? 2'd7 : 2'd6;
  wire [1:0] left = bits[5] ? q1 : q0;
  wire [1:0] right = bits[4] ? q3 : q2;
  assign replace_way = bits[6] ? {1'b1, right} : {1'b0, left};
endmodule
module plru16_find (input [14:0] bits, output [4:0] replace_way);
  wire [1:0] l0 = bits[7]  ? 2'd1  : 2'd0;
  wire [1:0] l1 = bits[6]  ? 2'd3  : 2'd2;
  wire [1:0] l2 = bits[5]  ? 2'd5  : 2'd4;
  wire [1:0] l3 = bits[4]  ? 2'd7  : 2'd6;
  wire [1:0] l4 = bits[3]  ? 2'd9  : 2'd8;
  wire [1:0] l5 = bits[2]  ? 2'd11 : 2'd10;
  wire [1:0] l6 = bits[1]  ? 2'd13 : 2'd12;
  wire [1:0] l7 = bits[0]  ? 2'd15 : 2'd14;
  wire [2:0] s0 = bits[11] ? {1'd1, l1} : {1'd0, l0};
  wire [2:0] s1 = bits[10] ? {1'd1, l3} : {1'd0, l2};
  wire [2:0] s2 = bits[9]  ? {1'd1, l5} : {1'd0, l4};
  wire [2:0] s3 = bits[8]  ? {1'd1, l7} : {1'd0, l6};
  wire [2:0] h0 = bits[13] ? {1'b1, s1[1:0]} : s0;
  wire [2:0] h1 = bits[12] ? {1'b1, s3[1:0]} : s2;
  assign replace_way = bits[14] ? {1'b1, h1[2:0]} : h0;
endmodule
module counter4_find (
  input [2:0] cnt0,
  input [2:0] cnt1,
  input [2:0] cnt2,
  input [2:0] cnt3,
  output [2:0] min_way);
  wire is_min0 = (cnt0 < cnt1) & (cnt0 < cnt2) & (cnt0 < cnt3);
  wire is_min1 = (cnt1 < cnt0) & (cnt1 < cnt2) & (cnt1 < cnt3);
  wire is_min2 = (cnt2 < cnt0) & (cnt2 < cnt1) & (cnt2 < cnt3);
  wire is_min3 = (cnt3 < cnt0) & (cnt3 < cnt1) & (cnt3 < cnt2);
  reg [2:0] min_r;
  always @(*) begin
    case (1'b1)
      is_min0: min_r = 2'd0;
      is_min1: min_r = 2'd1;
      is_min2: min_r = 2'd2;
      is_min3: min_r = 2'd3;
      default: min_r = 2'd0;
    endcase
  end
  assign min_way = min_r;
endmodule
module counter8_find (
  input [3:0] cnt0,
  input [3:0] cnt1,
  input [3:0] cnt2,
  input [3:0] cnt3,
  input [3:0] cnt4,
  input [3:0] cnt5,
  input [3:0] cnt6,
  input [3:0] cnt7,
  output [3:0] min_way);
  wire is_min0 = (cnt0 < cnt1) & (cnt0 < cnt2) & (cnt0 < cnt3) & (cnt0 < cnt4) & (cnt0 < cnt5) & (cnt0 < cnt6) & (cnt0 < cnt7);
  wire is_min1 = (cnt1 < cnt0) & (cnt1 < cnt2) & (cnt1 < cnt3) & (cnt1 < cnt4) & (cnt1 < cnt5) & (cnt1 < cnt6) & (cnt1 < cnt7);
  wire is_min2 = (cnt2 < cnt0) & (cnt2 < cnt1) & (cnt2 < cnt3) & (cnt2 < cnt4) & (cnt2 < cnt5) & (cnt2 < cnt6) & (cnt2 < cnt7);
  wire is_min3 = (cnt3 < cnt0) & (cnt3 < cnt1) & (cnt3 < cnt2) & (cnt3 < cnt4) & (cnt3 < cnt5) & (cnt3 < cnt6) & (cnt3 < cnt7);
  wire is_min4 = (cnt4 < cnt0) & (cnt4 < cnt1) & (cnt4 < cnt2) & (cnt4 < cnt3) & (cnt4 < cnt5) & (cnt4 < cnt6) & (cnt4 < cnt7);
  wire is_min5 = (cnt5 < cnt0) & (cnt5 < cnt1) & (cnt5 < cnt2) & (cnt5 < cnt3) & (cnt5 < cnt4) & (cnt5 < cnt6) & (cnt5 < cnt7);
  wire is_min6 = (cnt6 < cnt0) & (cnt6 < cnt1) & (cnt6 < cnt2) & (cnt6 < cnt3) & (cnt6 < cnt4) & (cnt6 < cnt5) & (cnt6 < cnt7);
  wire is_min7 = (cnt7 < cnt0) & (cnt7 < cnt1) & (cnt7 < cnt2) & (cnt7 < cnt3) & (cnt7 < cnt4) & (cnt7 < cnt5) & (cnt7 < cnt6);
  reg [3:0] min_r;
  always @(*) begin
    case (1'b1)
      is_min0: min_r = 3'd0;
      is_min1: min_r = 3'd1;
      is_min2: min_r = 3'd2;
      is_min3: min_r = 3'd3;
      is_min4: min_r = 3'd4;
      is_min5: min_r = 3'd5;
      is_min6: min_r = 3'd6;
      is_min7: min_r = 3'd7;
      default: min_r = 3'd0;
    endcase
  end
  assign min_way = min_r;
endmodule
module counter16_find (
  input [4:0] cnt0,
  input [4:0] cnt1,
  input [4:0] cnt2,
  input [4:0] cnt3,
  input [4:0] cnt4,
  input [4:0] cnt5,
  input [4:0] cnt6,
  input [4:0] cnt7,
  input [4:0] cnt8,
  input [4:0] cnt9,
  input [4:0] cnt10,
  input [4:0] cnt11,
  input [4:0] cnt12,
  input [4:0] cnt13,
  input [4:0] cnt14,
  input [4:0] cnt15,
  output [4:0] min_way);
  wire is_min0 = (cnt0 < cnt1) & (cnt0 < cnt2) & (cnt0 < cnt3) & (cnt0 < cnt4) & (cnt0 < cnt5) & (cnt0 < cnt6) & (cnt0 < cnt7) & (cnt0 < cnt8) & (cnt0 < cnt9) & (cnt0 < cnt10) & (cnt0 < cnt11) & (cnt0 < cnt12) & (cnt0 < cnt13) & (cnt0 < cnt14) & (cnt0 < cnt15);
  wire is_min1 = (cnt1 < cnt0) & (cnt1 < cnt2) & (cnt1 < cnt3) & (cnt1 < cnt4) & (cnt1 < cnt5) & (cnt1 < cnt6) & (cnt1 < cnt7) & (cnt1 < cnt8) & (cnt1 < cnt9) & (cnt1 < cnt10) & (cnt1 < cnt11) & (cnt1 < cnt12) & (cnt1 < cnt13) & (cnt1 < cnt14) & (cnt1 < cnt15);
  wire is_min2 = (cnt2 < cnt0) & (cnt2 < cnt1) & (cnt2 < cnt3) & (cnt2 < cnt4) & (cnt2 < cnt5) & (cnt2 < cnt6) & (cnt2 < cnt7) & (cnt2 < cnt8) & (cnt2 < cnt9) & (cnt2 < cnt10) & (cnt2 < cnt11) & (cnt2 < cnt12) & (cnt2 < cnt13) & (cnt2 < cnt14) & (cnt2 < cnt15);
  wire is_min3 = (cnt3 < cnt0) & (cnt3 < cnt1) & (cnt3 < cnt2) & (cnt3 < cnt4) & (cnt3 < cnt5) & (cnt3 < cnt6) & (cnt3 < cnt7) & (cnt3 < cnt8) & (cnt3 < cnt9) & (cnt3 < cnt10) & (cnt3 < cnt11) & (cnt3 < cnt12) & (cnt3 < cnt13) & (cnt3 < cnt14) & (cnt3 < cnt15);
  wire is_min4 = (cnt4 < cnt0) & (cnt4 < cnt1) & (cnt4 < cnt2) & (cnt4 < cnt3) & (cnt4 < cnt5) & (cnt4 < cnt6) & (cnt4 < cnt7) & (cnt4 < cnt8) & (cnt4 < cnt9) & (cnt4 < cnt10) & (cnt4 < cnt11) & (cnt4 < cnt12) & (cnt4 < cnt13) & (cnt4 < cnt14) & (cnt4 < cnt15);
  wire is_min5 = (cnt5 < cnt0) & (cnt5 < cnt1) & (cnt5 < cnt2) & (cnt5 < cnt3) & (cnt5 < cnt4) & (cnt5 < cnt6) & (cnt5 < cnt7) & (cnt5 < cnt8) & (cnt5 < cnt9) & (cnt5 < cnt10) & (cnt5 < cnt11) & (cnt5 < cnt12) & (cnt5 < cnt13) & (cnt5 < cnt14) & (cnt5 < cnt15);
  wire is_min6 = (cnt6 < cnt0) & (cnt6 < cnt1) & (cnt6 < cnt2) & (cnt6 < cnt3) & (cnt6 < cnt4) & (cnt6 < cnt5) & (cnt6 < cnt7) & (cnt6 < cnt8) & (cnt6 < cnt9) & (cnt6 < cnt10) & (cnt6 < cnt11) & (cnt6 < cnt12) & (cnt6 < cnt13) & (cnt6 < cnt14) & (cnt6 < cnt15);
  wire is_min7 = (cnt7 < cnt0) & (cnt7 < cnt1) & (cnt7 < cnt2) & (cnt7 < cnt3) & (cnt7 < cnt4) & (cnt7 < cnt5) & (cnt7 < cnt6) & (cnt7 < cnt8) & (cnt7 < cnt9) & (cnt7 < cnt10) & (cnt7 < cnt11) & (cnt7 < cnt12) & (cnt7 < cnt13) & (cnt7 < cnt14) & (cnt7 < cnt15);
  wire is_min8 = (cnt8 < cnt0) & (cnt8 < cnt1) & (cnt8 < cnt2) & (cnt8 < cnt3) & (cnt8 < cnt4) & (cnt8 < cnt5) & (cnt8 < cnt6) & (cnt8 < cnt7) & (cnt8 < cnt9) & (cnt8 < cnt10) & (cnt8 < cnt11) & (cnt8 < cnt12) & (cnt8 < cnt13) & (cnt8 < cnt14) & (cnt8 < cnt15);
  wire is_min9 = (cnt9 < cnt0) & (cnt9 < cnt1) & (cnt9 < cnt2) & (cnt9 < cnt3) & (cnt9 < cnt4) & (cnt9 < cnt5) & (cnt9 < cnt6) & (cnt9 < cnt7) & (cnt9 < cnt8) & (cnt9 < cnt10) & (cnt9 < cnt11) & (cnt9 < cnt12) & (cnt9 < cnt13) & (cnt9 < cnt14) & (cnt9 < cnt15);
  wire is_min10 = (cnt10 < cnt0) & (cnt10 < cnt1) & (cnt10 < cnt2) & (cnt10 < cnt3) & (cnt10 < cnt4) & (cnt10 < cnt5) & (cnt10 < cnt6) & (cnt10 < cnt7) & (cnt10 < cnt8) & (cnt10 < cnt9) & (cnt10 < cnt11) & (cnt10 < cnt12) & (cnt10 < cnt13) & (cnt10 < cnt14) & (cnt10 < cnt15);
  wire is_min11 = (cnt11 < cnt0) & (cnt11 < cnt1) & (cnt11 < cnt2) & (cnt11 < cnt3) & (cnt11 < cnt4) & (cnt11 < cnt5) & (cnt11 < cnt6) & (cnt11 < cnt7) & (cnt11 < cnt8) & (cnt11 < cnt9) & (cnt11 < cnt10) & (cnt11 < cnt12) & (cnt11 < cnt13) & (cnt11 < cnt14) & (cnt11 < cnt15);
  wire is_min12 = (cnt12 < cnt0) & (cnt12 < cnt1) & (cnt12 < cnt2) & (cnt12 < cnt3) & (cnt12 < cnt4) & (cnt12 < cnt5) & (cnt12 < cnt6) & (cnt12 < cnt7) & (cnt12 < cnt8) & (cnt12 < cnt9) & (cnt12 < cnt10) & (cnt12 < cnt11) & (cnt12 < cnt13) & (cnt12 < cnt14) & (cnt12 < cnt15);
  wire is_min13 = (cnt13 < cnt0) & (cnt13 < cnt1) & (cnt13 < cnt2) & (cnt13 < cnt3) & (cnt13 < cnt4) & (cnt13 < cnt5) & (cnt13 < cnt6) & (cnt13 < cnt7) & (cnt13 < cnt8) & (cnt13 < cnt9) & (cnt13 < cnt10) & (cnt13 < cnt11) & (cnt13 < cnt12) & (cnt13 < cnt14) & (cnt13 < cnt15);
  wire is_min14 = (cnt14 < cnt0) & (cnt14 < cnt1) & (cnt14 < cnt2) & (cnt14 < cnt3) & (cnt14 < cnt4) & (cnt14 < cnt5) & (cnt14 < cnt6) & (cnt14 < cnt7) & (cnt14 < cnt8) & (cnt14 < cnt9) & (cnt14 < cnt10) & (cnt14 < cnt11) & (cnt14 < cnt12) & (cnt14 < cnt13) & (cnt14 < cnt15);
  wire is_min15 = (cnt15 < cnt0) & (cnt15 < cnt1) & (cnt15 < cnt2) & (cnt15 < cnt3) & (cnt15 < cnt4) & (cnt15 < cnt5) & (cnt15 < cnt6) & (cnt15 < cnt7) & (cnt15 < cnt8) & (cnt15 < cnt9) & (cnt15 < cnt10) & (cnt15 < cnt11) & (cnt15 < cnt12) & (cnt15 < cnt13) & (cnt15 < cnt14);
  reg [4:0] min_r;
  always @(*) begin
    case (1'b1)
      is_min0: min_r = 4'd0;
      is_min1: min_r = 4'd1;
      is_min2: min_r = 4'd2;
      is_min3: min_r = 4'd3;
      is_min4: min_r = 4'd4;
      is_min5: min_r = 4'd5;
      is_min6: min_r = 4'd6;
      is_min7: min_r = 4'd7;
      is_min8: min_r = 4'd8;
      is_min9: min_r = 4'd9;
      is_min10: min_r = 4'd10;
      is_min11: min_r = 4'd11;
      is_min12: min_r = 4'd12;
      is_min13: min_r = 4'd13;
      is_min14: min_r = 4'd14;
      is_min15: min_r = 4'd15;
      default: min_r = 4'd0;
    endcase
  end
  assign min_way = min_r;
endmodule
module counter4_update (
  input [2:0] cnt0,
  input [2:0] cnt1,
  input [2:0] cnt2,
  input [2:0] cnt3,
  input [2:0] access_way,
  output [2:0] new_cnt0,
  output [2:0] new_cnt1,
  output [2:0] new_cnt2,
  output [2:0] new_cnt3,
  output dummy);
  assign new_cnt0 = (access_way == 2'd0) ? 2'd3 : cnt0;
  assign new_cnt1 = (access_way == 2'd1) ? 2'd3 : cnt1;
  assign new_cnt2 = (access_way == 2'd2) ? 2'd3 : cnt2;
  assign new_cnt3 = (access_way == 2'd3) ? 2'd3 : cnt3;
endmodule
module counter8_update (
  input [3:0] cnt0,
  input [3:0] cnt1,
  input [3:0] cnt2,
  input [3:0] cnt3,
  input [3:0] cnt4,
  input [3:0] cnt5,
  input [3:0] cnt6,
  input [3:0] cnt7,
  input [3:0] access_way,
  output [3:0] new_cnt0,
  output [3:0] new_cnt1,
  output [3:0] new_cnt2,
  output [3:0] new_cnt3,
  output [3:0] new_cnt4,
  output [3:0] new_cnt5,
  output [3:0] new_cnt6,
  output [3:0] new_cnt7,
  output dummy);
  assign new_cnt0 = (access_way == 3'd0) ? 3'd7 : cnt0;
  assign new_cnt1 = (access_way == 3'd1) ? 3'd7 : cnt1;
  assign new_cnt2 = (access_way == 3'd2) ? 3'd7 : cnt2;
  assign new_cnt3 = (access_way == 3'd3) ? 3'd7 : cnt3;
  assign new_cnt4 = (access_way == 3'd4) ? 3'd7 : cnt4;
  assign new_cnt5 = (access_way == 3'd5) ? 3'd7 : cnt5;
  assign new_cnt6 = (access_way == 3'd6) ? 3'd7 : cnt6;
  assign new_cnt7 = (access_way == 3'd7) ? 3'd7 : cnt7;
endmodule
module counter16_update (
  input [4:0] cnt0,
  input [4:0] cnt1,
  input [4:0] cnt2,
  input [4:0] cnt3,
  input [4:0] cnt4,
  input [4:0] cnt5,
  input [4:0] cnt6,
  input [4:0] cnt7,
  input [4:0] cnt8,
  input [4:0] cnt9,
  input [4:0] cnt10,
  input [4:0] cnt11,
  input [4:0] cnt12,
  input [4:0] cnt13,
  input [4:0] cnt14,
  input [4:0] cnt15,
  input [4:0] access_way,
  output [4:0] new_cnt0,
  output [4:0] new_cnt1,
  output [4:0] new_cnt2,
  output [4:0] new_cnt3,
  output [4:0] new_cnt4,
  output [4:0] new_cnt5,
  output [4:0] new_cnt6,
  output [4:0] new_cnt7,
  output [4:0] new_cnt8,
  output [4:0] new_cnt9,
  output [4:0] new_cnt10,
  output [4:0] new_cnt11,
  output [4:0] new_cnt12,
  output [4:0] new_cnt13,
  output [4:0] new_cnt14,
  output [4:0] new_cnt15,
  output dummy);
  assign new_cnt0 = (access_way == 4'd0) ? 4'd15 : cnt0;
  assign new_cnt1 = (access_way == 4'd1) ? 4'd15 : cnt1;
  assign new_cnt2 = (access_way == 4'd2) ? 4'd15 : cnt2;
  assign new_cnt3 = (access_way == 4'd3) ? 4'd15 : cnt3;
  assign new_cnt4 = (access_way == 4'd4) ? 4'd15 : cnt4;
  assign new_cnt5 = (access_way == 4'd5) ? 4'd15 : cnt5;
  assign new_cnt6 = (access_way == 4'd6) ? 4'd15 : cnt6;
  assign new_cnt7 = (access_way == 4'd7) ? 4'd15 : cnt7;
  assign new_cnt8 = (access_way == 4'd8) ? 4'd15 : cnt8;
  assign new_cnt9 = (access_way == 4'd9) ? 4'd15 : cnt9;
  assign new_cnt10 = (access_way == 4'd10) ? 4'd15 : cnt10;
  assign new_cnt11 = (access_way == 4'd11) ? 4'd15 : cnt11;
  assign new_cnt12 = (access_way == 4'd12) ? 4'd15 : cnt12;
  assign new_cnt13 = (access_way == 4'd13) ? 4'd15 : cnt13;
  assign new_cnt14 = (access_way == 4'd14) ? 4'd15 : cnt14;
  assign new_cnt15 = (access_way == 4'd15) ? 4'd15 : cnt15;
endmodule