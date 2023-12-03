module combinational_multiplier
  (input  [5:0] mplier,
   input  [5:0] mcand,
   output [11:0] product);
  wire [11:0] n1_o;
  wire [11:0] n2_o;
  wire [11:0] n3_o;
  assign product = n3_o;
  /* src/combinational_multiplier.vhd:23:54  */
  assign n1_o = {6'b0, mplier};  //  uext
  /* src/combinational_multiplier.vhd:23:54  */
  assign n2_o = {6'b0, mcand};  //  uext
  /* src/combinational_multiplier.vhd:23:54  */
  assign n3_o = n1_o * n2_o; // umul
endmodule

