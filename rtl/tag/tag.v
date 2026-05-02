// Tag comparison modules extracted from cpu_circuits

module tag08_2way_hit (input [7:0] tag0
  ,input [7:0] tag1
  ,input [7:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  assign hit_any = hit0 | hit1;
endmodule

module tag08_4way_hit (input [7:0] tag0
  ,input [7:0] tag1
  ,input [7:0] tag2
  ,input [7:0] tag3
  ,input [7:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
endmodule

module tag08_4way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [7:0] tag0,
  input [7:0] tag1,
  input [7:0] tag2,
  input [7:0] tag3,
  input [7:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
  assign selected_data = hit0 ? data0 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag08_8way_hit (input [7:0] tag0
  ,input [7:0] tag1
  ,input [7:0] tag2
  ,input [7:0] tag3
  ,input [7:0] tag4
  ,input [7:0] tag5
  ,input [7:0] tag6
  ,input [7:0] tag7
  ,input [7:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
endmodule

module tag08_8way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [31:0] data4,
  input [31:0] data5,
  input [31:0] data6,
  input [31:0] data7,
  input [7:0] tag0,
  input [7:0] tag1,
  input [7:0] tag2,
  input [7:0] tag3,
  input [7:0] tag4,
  input [7:0] tag5,
  input [7:0] tag6,
  input [7:0] tag7,
  input [7:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
  assign selected_data = hit0 ? data0 : hit7 ? data7 : hit6 ? data6 : hit5 ? data5 : hit4 ? data4 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag08_eq (input [7:0] tag, req_tag, output hit); assign hit = (tag == req_tag); endmodule

module tag08_mask_eq (input [7:0] tag, req_tag, mask, output hit); assign hit = ((tag & mask) == (req_tag & mask)); endmodule

module tag16_2way_hit (input [15:0] tag0
  ,input [15:0] tag1
  ,input [15:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  assign hit_any = hit0 | hit1;
endmodule

module tag16_4way_hit (input [15:0] tag0
  ,input [15:0] tag1
  ,input [15:0] tag2
  ,input [15:0] tag3
  ,input [15:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
endmodule

module tag16_4way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [15:0] tag0,
  input [15:0] tag1,
  input [15:0] tag2,
  input [15:0] tag3,
  input [15:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
  assign selected_data = hit0 ? data0 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag16_8way_hit (input [15:0] tag0
  ,input [15:0] tag1
  ,input [15:0] tag2
  ,input [15:0] tag3
  ,input [15:0] tag4
  ,input [15:0] tag5
  ,input [15:0] tag6
  ,input [15:0] tag7
  ,input [15:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
endmodule

module tag16_8way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [31:0] data4,
  input [31:0] data5,
  input [31:0] data6,
  input [31:0] data7,
  input [15:0] tag0,
  input [15:0] tag1,
  input [15:0] tag2,
  input [15:0] tag3,
  input [15:0] tag4,
  input [15:0] tag5,
  input [15:0] tag6,
  input [15:0] tag7,
  input [15:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
  assign selected_data = hit0 ? data0 : hit7 ? data7 : hit6 ? data6 : hit5 ? data5 : hit4 ? data4 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag16_eq (input [15:0] tag, req_tag, output hit);
  assign hit = (tag == req_tag);
endmodule

module tag16_mask_eq (input [15:0] tag, req_tag, mask, output hit);
  assign hit = ((tag & mask) == (req_tag & mask));
endmodule

module tag20_2way_hit (input [19:0] tag0
  ,input [19:0] tag1
  ,input [19:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  assign hit_any = hit0 | hit1;
endmodule

module tag20_4way_hit (input [19:0] tag0
  ,input [19:0] tag1
  ,input [19:0] tag2
  ,input [19:0] tag3
  ,input [19:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
endmodule

module tag20_4way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [19:0] tag0,
  input [19:0] tag1,
  input [19:0] tag2,
  input [19:0] tag3,
  input [19:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
  assign selected_data = hit0 ? data0 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag20_8way_hit (input [19:0] tag0
  ,input [19:0] tag1
  ,input [19:0] tag2
  ,input [19:0] tag3
  ,input [19:0] tag4
  ,input [19:0] tag5
  ,input [19:0] tag6
  ,input [19:0] tag7
  ,input [19:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
endmodule

module tag20_8way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [31:0] data4,
  input [31:0] data5,
  input [31:0] data6,
  input [31:0] data7,
  input [19:0] tag0,
  input [19:0] tag1,
  input [19:0] tag2,
  input [19:0] tag3,
  input [19:0] tag4,
  input [19:0] tag5,
  input [19:0] tag6,
  input [19:0] tag7,
  input [19:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
  assign selected_data = hit0 ? data0 : hit7 ? data7 : hit6 ? data6 : hit5 ? data5 : hit4 ? data4 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag20_eq (input [19:0] tag, req_tag, output hit);
  assign hit = (tag == req_tag);
endmodule

module tag20_mask_eq (input [19:0] tag, req_tag, mask, output hit);
  assign hit = ((tag & mask) == (req_tag & mask));
endmodule

module tag24_2way_hit (input [23:0] tag0
  ,input [23:0] tag1
  ,input [23:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  assign hit_any = hit0 | hit1;
endmodule

module tag24_4way_hit (input [23:0] tag0
  ,input [23:0] tag1
  ,input [23:0] tag2
  ,input [23:0] tag3
  ,input [23:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
endmodule

module tag24_4way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [23:0] tag0,
  input [23:0] tag1,
  input [23:0] tag2,
  input [23:0] tag3,
  input [23:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
  assign selected_data = hit0 ? data0 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag24_8way_hit (input [23:0] tag0
  ,input [23:0] tag1
  ,input [23:0] tag2
  ,input [23:0] tag3
  ,input [23:0] tag4
  ,input [23:0] tag5
  ,input [23:0] tag6
  ,input [23:0] tag7
  ,input [23:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
endmodule

module tag24_8way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [31:0] data4,
  input [31:0] data5,
  input [31:0] data6,
  input [31:0] data7,
  input [23:0] tag0,
  input [23:0] tag1,
  input [23:0] tag2,
  input [23:0] tag3,
  input [23:0] tag4,
  input [23:0] tag5,
  input [23:0] tag6,
  input [23:0] tag7,
  input [23:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
  assign selected_data = hit0 ? data0 : hit7 ? data7 : hit6 ? data6 : hit5 ? data5 : hit4 ? data4 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag24_eq (input [23:0] tag, req_tag, output hit);
  assign hit = (tag == req_tag);
endmodule

module tag24_mask_eq (input [23:0] tag, req_tag, mask, output hit);
  assign hit = ((tag & mask) == (req_tag & mask));
endmodule

module tag32_2way_hit (input [31:0] tag0
  ,input [31:0] tag1
  ,input [31:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  assign hit_any = hit0 | hit1;
endmodule

module tag32_4way_hit (input [31:0] tag0
  ,input [31:0] tag1
  ,input [31:0] tag2
  ,input [31:0] tag3
  ,input [31:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
endmodule

module tag32_4way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [31:0] tag0,
  input [31:0] tag1,
  input [31:0] tag2,
  input [31:0] tag3,
  input [31:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
  assign selected_data = hit0 ? data0 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag32_8way_hit (input [31:0] tag0
  ,input [31:0] tag1
  ,input [31:0] tag2
  ,input [31:0] tag3
  ,input [31:0] tag4
  ,input [31:0] tag5
  ,input [31:0] tag6
  ,input [31:0] tag7
  ,input [31:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
endmodule

module tag32_8way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [31:0] data4,
  input [31:0] data5,
  input [31:0] data6,
  input [31:0] data7,
  input [31:0] tag0,
  input [31:0] tag1,
  input [31:0] tag2,
  input [31:0] tag3,
  input [31:0] tag4,
  input [31:0] tag5,
  input [31:0] tag6,
  input [31:0] tag7,
  input [31:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
  assign selected_data = hit0 ? data0 : hit7 ? data7 : hit6 ? data6 : hit5 ? data5 : hit4 ? data4 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag32_eq (input [31:0] tag, req_tag, output hit);
  assign hit = (tag == req_tag);
endmodule

module tag32_mask_eq (input [31:0] tag, req_tag, mask, output hit);
  assign hit = ((tag & mask) == (req_tag & mask));
endmodule

module tag48_2way_hit (input [47:0] tag0
  ,input [47:0] tag1
  ,input [47:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  assign hit_any = hit0 | hit1;
endmodule

module tag48_4way_hit (input [47:0] tag0
  ,input [47:0] tag1
  ,input [47:0] tag2
  ,input [47:0] tag3
  ,input [47:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
endmodule

module tag48_4way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [47:0] tag0,
  input [47:0] tag1,
  input [47:0] tag2,
  input [47:0] tag3,
  input [47:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3;
  assign selected_data = hit0 ? data0 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag48_8way_hit (input [47:0] tag0
  ,input [47:0] tag1
  ,input [47:0] tag2
  ,input [47:0] tag3
  ,input [47:0] tag4
  ,input [47:0] tag5
  ,input [47:0] tag6
  ,input [47:0] tag7
  ,input [47:0] req_tag
  ,output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
endmodule

module tag48_8way_sel (
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  input [31:0] data3,
  input [31:0] data4,
  input [31:0] data5,
  input [31:0] data6,
  input [31:0] data7,
  input [47:0] tag0,
  input [47:0] tag1,
  input [47:0] tag2,
  input [47:0] tag3,
  input [47:0] tag4,
  input [47:0] tag5,
  input [47:0] tag6,
  input [47:0] tag7,
  input [47:0] req_tag,
  output [31:0] selected_data,
  output hit_any);
  wire hit0 = (tag0 == req_tag);
  wire hit1 = (tag1 == req_tag);
  wire hit2 = (tag2 == req_tag);
  wire hit3 = (tag3 == req_tag);
  wire hit4 = (tag4 == req_tag);
  wire hit5 = (tag5 == req_tag);
  wire hit6 = (tag6 == req_tag);
  wire hit7 = (tag7 == req_tag);
  assign hit_any = hit0 | hit1 | hit2 | hit3 | hit4 | hit5 | hit6 | hit7;
  assign selected_data = hit0 ? data0 : hit7 ? data7 : hit6 ? data6 : hit5 ? data5 : hit4 ? data4 : hit3 ? data3 : hit2 ? data2 : hit1 ? data1 : data0;
endmodule

module tag48_eq (input [47:0] tag, req_tag, output hit); assign hit = (tag == req_tag); endmodule

module tag48_mask_eq (input [47:0] tag, req_tag, mask, output hit); assign hit = ((tag & mask) == (req_tag & mask)); endmodule

