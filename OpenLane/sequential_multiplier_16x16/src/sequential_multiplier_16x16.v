module sequential_multiplier_16x16
  (input  clk,
   input  st,
   input  [15:0] mplier,
   input  [15:0] mcand,
   output done,
   output [31:0] product);
  wire [3:0] estado_act;
  wire [3:0] estado_sig;
  wire [4:0] cnt_act;
  wire [4:0] cnt_sig;
  wire k;
  wire m;
  wire [32:0] acu_act;
  wire [32:0] acu_sig;
  wire load;
  wire ad;
  wire sh;
  wire [16:0] suma;
  wire [15:0] acu_suma;
  wire n2_o;
  wire [15:0] n3_o;
  wire [31:0] n4_o;
  wire [16:0] n6_o;
  wire [16:0] n8_o;
  wire [16:0] n9_o;
  wire [3:0] n20_o;
  wire n23_o;
  wire n25_o;
  wire n26_o;
  wire n27_o;
  wire n28_o;
  wire n29_o;
  wire n30_o;
  wire [3:0] n32_o;
  wire n35_o;
  wire [3:0] n37_o;
  wire n40_o;
  wire n42_o;
  wire [3:0] n44_o;
  wire n46_o;
  wire n48_o;
  wire n50_o;
  wire n51_o;
  wire [3:0] n54_o;
  wire n56_o;
  wire n58_o;
  wire [3:0] n59_o;
  reg n63_o;
  reg [3:0] n67_o;
  reg n70_o;
  reg n74_o;
  reg n79_o;
  wire [4:0] n83_o;
  wire [31:0] n84_o;
  wire [31:0] n86_o;
  wire [4:0] n87_o;
  wire n88_o;
  wire n89_o;
  wire [4:0] n90_o;
  wire [31:0] n92_o;
  wire n94_o;
  wire n95_o;
  wire [15:0] n99_o;
  wire [32:0] n100_o;
  wire [31:0] n101_o;
  wire [32:0] n103_o;
  wire [32:0] n104_o;
  wire [32:0] n105_o;
  wire [15:0] n106_o;
  wire [15:0] n107_o;
  wire [16:0] n108_o;
  wire [16:0] n110_o;
  reg [3:0] n114_q;
  reg [4:0] n115_q;
  reg [32:0] n116_q;
  wire [32:0] n117_o;
  assign done = n63_o;
  assign product = n4_o;
  /* src/sequential_multiplier_16x16.vhd:21:12  */
  assign estado_act = n114_q; // (signal)
  /* src/sequential_multiplier_16x16.vhd:21:24  */
  assign estado_sig = n67_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:22:12  */
  assign cnt_act = n115_q; // (signal)
  /* src/sequential_multiplier_16x16.vhd:22:21  */
  assign cnt_sig = n83_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:23:12  */
  assign k = n95_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:23:15  */
  assign m = n2_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:24:12  */
  assign acu_act = n116_q; // (signal)
  /* src/sequential_multiplier_16x16.vhd:24:21  */
  assign acu_sig = n117_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:25:12  */
  assign load = n70_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:25:18  */
  assign ad = n74_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:25:22  */
  assign sh = n79_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:26:12  */
  assign suma = n9_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:27:12  */
  assign acu_suma = n3_o; // (signal)
  /* src/sequential_multiplier_16x16.vhd:31:25  */
  assign n2_o = acu_act[0];
  /* src/sequential_multiplier_16x16.vhd:32:25  */
  assign n3_o = acu_act[31:16];
  /* src/sequential_multiplier_16x16.vhd:33:25  */
  assign n4_o = acu_act[31:0];
  /* src/sequential_multiplier_16x16.vhd:36:48  */
  assign n6_o = {1'b0, mcand};
  /* src/sequential_multiplier_16x16.vhd:36:72  */
  assign n8_o = {1'b0, acu_suma};
  /* src/sequential_multiplier_16x16.vhd:36:57  */
  assign n9_o = n6_o + n8_o;
  /* src/sequential_multiplier_16x16.vhd:59:17  */
  assign n20_o = st ? 4'b0001 : estado_act;
  /* src/sequential_multiplier_16x16.vhd:59:17  */
  assign n23_o = st ? 1'b1 : 1'b0;
  /* src/sequential_multiplier_16x16.vhd:58:13  */
  assign n25_o = estado_act == 4'b0000;
  /* src/sequential_multiplier_16x16.vhd:65:34  */
  assign n26_o = ~k;
  /* src/sequential_multiplier_16x16.vhd:65:46  */
  assign n27_o = ~m;
  /* src/sequential_multiplier_16x16.vhd:65:40  */
  assign n28_o = n27_o & n26_o;
  /* src/sequential_multiplier_16x16.vhd:71:49  */
  assign n29_o = ~m;
  /* src/sequential_multiplier_16x16.vhd:71:43  */
  assign n30_o = n29_o & k;
  /* src/sequential_multiplier_16x16.vhd:71:29  */
  assign n32_o = n30_o ? 4'b0011 : estado_act;
  /* src/sequential_multiplier_16x16.vhd:71:29  */
  assign n35_o = n30_o ? 1'b1 : 1'b0;
  /* src/sequential_multiplier_16x16.vhd:68:29  */
  assign n37_o = m ? 4'b0010 : n32_o;
  /* src/sequential_multiplier_16x16.vhd:68:29  */
  assign n40_o = m ? 1'b1 : 1'b0;
  /* src/sequential_multiplier_16x16.vhd:68:29  */
  assign n42_o = m ? 1'b0 : n35_o;
  /* src/sequential_multiplier_16x16.vhd:65:29  */
  assign n44_o = n28_o ? 4'b0001 : n37_o;
  /* src/sequential_multiplier_16x16.vhd:65:29  */
  assign n46_o = n28_o ? 1'b0 : n40_o;
  /* src/sequential_multiplier_16x16.vhd:65:29  */
  assign n48_o = n28_o ? 1'b1 : n42_o;
  /* src/sequential_multiplier_16x16.vhd:65:13  */
  assign n50_o = estado_act == 4'b0001;
  /* src/sequential_multiplier_16x16.vhd:77:34  */
  assign n51_o = ~k;
  /* src/sequential_multiplier_16x16.vhd:77:29  */
  assign n54_o = n51_o ? 4'b0001 : 4'b0011;
  /* src/sequential_multiplier_16x16.vhd:76:13  */
  assign n56_o = estado_act == 4'b0010;
  /* src/sequential_multiplier_16x16.vhd:83:13  */
  assign n58_o = estado_act == 4'b0011;
  assign n59_o = {n58_o, n56_o, n50_o, n25_o};
  /* src/sequential_multiplier_16x16.vhd:57:9  */
  always @*
    case (n59_o)
      4'b1000: n63_o = 1'b1;
      4'b0100: n63_o = 1'b0;
      4'b0010: n63_o = 1'b0;
      4'b0001: n63_o = 1'b0;
      default: n63_o = 1'bX;
    endcase
  /* src/sequential_multiplier_16x16.vhd:57:9  */
  always @*
    case (n59_o)
      4'b1000: n67_o = 4'b0000;
      4'b0100: n67_o = n54_o;
      4'b0010: n67_o = n44_o;
      4'b0001: n67_o = n20_o;
      default: n67_o = 4'bX;
    endcase
  /* src/sequential_multiplier_16x16.vhd:57:9  */
  always @*
    case (n59_o)
      4'b1000: n70_o = 1'b0;
      4'b0100: n70_o = 1'b0;
      4'b0010: n70_o = 1'b0;
      4'b0001: n70_o = n23_o;
      default: n70_o = 1'bX;
    endcase
  /* src/sequential_multiplier_16x16.vhd:57:9  */
  always @*
    case (n59_o)
      4'b1000: n74_o = 1'b0;
      4'b0100: n74_o = 1'b0;
      4'b0010: n74_o = n46_o;
      4'b0001: n74_o = 1'b0;
      default: n74_o = 1'bX;
    endcase
  /* src/sequential_multiplier_16x16.vhd:57:9  */
  always @*
    case (n59_o)
      4'b1000: n79_o = 1'b0;
      4'b0100: n79_o = 1'b1;
      4'b0010: n79_o = n48_o;
      4'b0001: n79_o = 1'b0;
      default: n79_o = 1'bX;
    endcase
  /* src/sequential_multiplier_16x16.vhd:90:23  */
  assign n83_o = st ? 5'b00000 : n90_o;
  /* src/sequential_multiplier_16x16.vhd:90:53  */
  assign n84_o = {27'b0, cnt_act};  //  uext
  /* src/sequential_multiplier_16x16.vhd:90:53  */
  assign n86_o = n84_o + 32'b00000000000000000000000000000001;
  /* src/sequential_multiplier_16x16.vhd:90:44  */
  assign n87_o = n86_o[4:0];  // trunc
  /* src/sequential_multiplier_16x16.vhd:90:79  */
  assign n88_o = ~k;
  /* src/sequential_multiplier_16x16.vhd:90:73  */
  assign n89_o = n88_o & sh;
  /* src/sequential_multiplier_16x16.vhd:90:39  */
  assign n90_o = n89_o ? n87_o : cnt_act;
  /* src/sequential_multiplier_16x16.vhd:91:38  */
  assign n92_o = {27'b0, cnt_act};  //  uext
  /* src/sequential_multiplier_16x16.vhd:91:38  */
  assign n94_o = n92_o == 32'b00000000000000000000000000001111;
  /* src/sequential_multiplier_16x16.vhd:91:24  */
  assign n95_o = n94_o ? 1'b1 : 1'b0;
  /* src/sequential_multiplier_16x16.vhd:102:38  */
  assign n99_o = acu_act[15:0];
  /* src/sequential_multiplier_16x16.vhd:102:29  */
  assign n100_o = {suma, n99_o};
  /* src/sequential_multiplier_16x16.vhd:105:37  */
  assign n101_o = acu_act[32:1];
  /* src/sequential_multiplier_16x16.vhd:105:28  */
  assign n103_o = {1'b0, n101_o};
  /* src/sequential_multiplier_16x16.vhd:103:9  */
  assign n104_o = sh ? n103_o : acu_act;
  /* src/sequential_multiplier_16x16.vhd:100:9  */
  assign n105_o = ad ? n100_o : n104_o;
  assign n106_o = n105_o[15:0];
  /* src/sequential_multiplier_16x16.vhd:97:9  */
  assign n107_o = load ? mplier : n106_o;
  assign n108_o = n105_o[32:16];
  /* src/sequential_multiplier_16x16.vhd:97:9  */
  assign n110_o = load ? 17'b00000000000000000 : n108_o;
  /* src/sequential_multiplier_16x16.vhd:41:11  */
  always @(posedge clk)
    n114_q <= estado_sig;
  /* src/sequential_multiplier_16x16.vhd:41:11  */
  always @(posedge clk)
    n115_q <= cnt_sig;
  /* src/sequential_multiplier_16x16.vhd:41:11  */
  always @(posedge clk)
    n116_q <= acu_sig;
  /* src/sequential_multiplier_16x16.vhd:41:11  */
  assign n117_o = {n110_o, n107_o};
endmodule

