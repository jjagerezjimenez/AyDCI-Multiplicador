/* Generated by Yosys 0.30+48 (git sha1 14d50a176d5, gcc 8.3.1 -fPIC -Os) */

module sequential_multiplier_16x16(clk, st, mplier, mcand, done, product);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire \acu_act[32] ;
  input clk;
  wire clk;
  wire \cnt_act[0] ;
  wire \cnt_act[1] ;
  wire \cnt_act[2] ;
  wire \cnt_act[3] ;
  wire \cnt_act[4] ;
  output done;
  wire done;
  wire \estado_act[0] ;
  wire \estado_act[1] ;
  input [15:0] mcand;
  wire [15:0] mcand;
  input [15:0] mplier;
  wire [15:0] mplier;
  output [31:0] product;
  wire [31:0] product;
  input st;
  wire st;
  sky130_fd_sc_hd__nand2_2 _239_ (
    .A(\estado_act[0] ),
    .B(\estado_act[1] ),
    .Y(_040_)
  );
  sky130_fd_sc_hd__inv_2 _240_ (
    .A(_040_),
    .Y(done)
  );
  sky130_fd_sc_hd__or2_2 _241_ (
    .A(\estado_act[0] ),
    .B(\estado_act[1] ),
    .X(_041_)
  );
  sky130_fd_sc_hd__nand2_2 _242_ (
    .A(\estado_act[0] ),
    .B(product[0]),
    .Y(_042_)
  );
  sky130_fd_sc_hd__o211ai_2 _243_ (
    .A1(st),
    .A2(_041_),
    .B1(_042_),
    .C1(_040_),
    .Y(_043_)
  );
  sky130_fd_sc_hd__inv_2 _244_ (
    .A(_043_),
    .Y(_044_)
  );
  sky130_fd_sc_hd__buf_1 _245_ (
    .A(_044_),
    .X(_000_)
  );
  sky130_fd_sc_hd__nand2_2 _246_ (
    .A(_040_),
    .B(_041_),
    .Y(_045_)
  );
  sky130_fd_sc_hd__and4b_2 _247_ (
    .A_N(\cnt_act[4] ),
    .B(\cnt_act[3] ),
    .C(\cnt_act[1] ),
    .D(\cnt_act[0] ),
    .X(_046_)
  );
  sky130_fd_sc_hd__a21boi_2 _248_ (
    .A1(\cnt_act[2] ),
    .A2(_046_),
    .B1_N(_042_),
    .Y(_047_)
  );
  sky130_fd_sc_hd__nor2_2 _249_ (
    .A(_045_),
    .B(_047_),
    .Y(_001_)
  );
  sky130_fd_sc_hd__nand2_2 _250_ (
    .A(product[16]),
    .B(mcand[0]),
    .Y(_048_)
  );
  sky130_fd_sc_hd__nor2_2 _251_ (
    .A(\estado_act[1] ),
    .B(_042_),
    .Y(_049_)
  );
  sky130_fd_sc_hd__buf_1 _252_ (
    .A(_049_),
    .X(_050_)
  );
  sky130_fd_sc_hd__mux2_2 _253_ (
    .A0(product[17]),
    .A1(_048_),
    .S(_050_),
    .X(_051_)
  );
  sky130_fd_sc_hd__or2_2 _254_ (
    .A(\estado_act[1] ),
    .B(_042_),
    .X(_052_)
  );
  sky130_fd_sc_hd__buf_1 _255_ (
    .A(_052_),
    .X(_053_)
  );
  sky130_fd_sc_hd__buf_1 _256_ (
    .A(_053_),
    .X(_054_)
  );
  sky130_fd_sc_hd__and2_2 _257_ (
    .A(_040_),
    .B(_041_),
    .X(_055_)
  );
  sky130_fd_sc_hd__buf_1 _258_ (
    .A(_055_),
    .X(_056_)
  );
  sky130_fd_sc_hd__buf_1 _259_ (
    .A(_056_),
    .X(_057_)
  );
  sky130_fd_sc_hd__o21a_2 _260_ (
    .A1(mcand[0]),
    .A2(_054_),
    .B1(_057_),
    .X(_058_)
  );
  sky130_fd_sc_hd__inv_2 _261_ (
    .A(st),
    .Y(_059_)
  );
  sky130_fd_sc_hd__or2_2 _262_ (
    .A(_059_),
    .B(_041_),
    .X(_060_)
  );
  sky130_fd_sc_hd__buf_1 _263_ (
    .A(_060_),
    .X(_061_)
  );
  sky130_fd_sc_hd__o221a_2 _264_ (
    .A1(_045_),
    .A2(_051_),
    .B1(_058_),
    .B2(product[16]),
    .C1(_061_),
    .X(_002_)
  );
  sky130_fd_sc_hd__nand2_2 _265_ (
    .A(product[17]),
    .B(mcand[1]),
    .Y(_062_)
  );
  sky130_fd_sc_hd__or2_2 _266_ (
    .A(product[17]),
    .B(mcand[1]),
    .X(_063_)
  );
  sky130_fd_sc_hd__a21bo_2 _267_ (
    .A1(_062_),
    .A2(_063_),
    .B1_N(_048_),
    .X(_064_)
  );
  sky130_fd_sc_hd__a41o_2 _268_ (
    .A1(product[16]),
    .A2(mcand[0]),
    .A3(_062_),
    .A4(_063_),
    .B1(_053_),
    .X(_065_)
  );
  sky130_fd_sc_hd__inv_2 _269_ (
    .A(_065_),
    .Y(_066_)
  );
  sky130_fd_sc_hd__a221o_2 _270_ (
    .A1(product[18]),
    .A2(_054_),
    .B1(_064_),
    .B2(_066_),
    .C1(_045_),
    .X(_067_)
  );
  sky130_fd_sc_hd__o211a_2 _271_ (
    .A1(product[17]),
    .A2(_057_),
    .B1(_061_),
    .C1(_067_),
    .X(_003_)
  );
  sky130_fd_sc_hd__nor2_2 _272_ (
    .A(product[17]),
    .B(mcand[1]),
    .Y(_068_)
  );
  sky130_fd_sc_hd__o21ai_2 _273_ (
    .A1(_048_),
    .A2(_068_),
    .B1(_062_),
    .Y(_069_)
  );
  sky130_fd_sc_hd__nor2_2 _274_ (
    .A(product[18]),
    .B(mcand[2]),
    .Y(_070_)
  );
  sky130_fd_sc_hd__and2_2 _275_ (
    .A(product[18]),
    .B(mcand[2]),
    .X(_071_)
  );
  sky130_fd_sc_hd__nor2_2 _276_ (
    .A(_070_),
    .B(_071_),
    .Y(_072_)
  );
  sky130_fd_sc_hd__or2_2 _277_ (
    .A(_069_),
    .B(_072_),
    .X(_073_)
  );
  sky130_fd_sc_hd__a21oi_2 _278_ (
    .A1(_069_),
    .A2(_072_),
    .B1(_053_),
    .Y(_074_)
  );
  sky130_fd_sc_hd__a22o_2 _279_ (
    .A1(product[19]),
    .A2(_054_),
    .B1(_073_),
    .B2(_074_),
    .X(_075_)
  );
  sky130_fd_sc_hd__mux2_2 _280_ (
    .A0(product[18]),
    .A1(_075_),
    .S(_057_),
    .X(_076_)
  );
  sky130_fd_sc_hd__and2_2 _281_ (
    .A(_061_),
    .B(_076_),
    .X(_077_)
  );
  sky130_fd_sc_hd__buf_1 _282_ (
    .A(_077_),
    .X(_004_)
  );
  sky130_fd_sc_hd__nor2_2 _283_ (
    .A(product[19]),
    .B(mcand[3]),
    .Y(_078_)
  );
  sky130_fd_sc_hd__and2_2 _284_ (
    .A(product[19]),
    .B(mcand[3]),
    .X(_079_)
  );
  sky130_fd_sc_hd__nor2_2 _285_ (
    .A(_078_),
    .B(_079_),
    .Y(_080_)
  );
  sky130_fd_sc_hd__a21oi_2 _286_ (
    .A1(_069_),
    .A2(_072_),
    .B1(_071_),
    .Y(_081_)
  );
  sky130_fd_sc_hd__or2_2 _287_ (
    .A(_080_),
    .B(_081_),
    .X(_082_)
  );
  sky130_fd_sc_hd__a21oi_2 _288_ (
    .A1(_080_),
    .A2(_081_),
    .B1(_053_),
    .Y(_083_)
  );
  sky130_fd_sc_hd__o2bb2a_2 _289_ (
    .A1_N(_082_),
    .A2_N(_083_),
    .B1(product[20]),
    .B2(_050_),
    .X(_084_)
  );
  sky130_fd_sc_hd__mux2_2 _290_ (
    .A0(product[19]),
    .A1(_084_),
    .S(_057_),
    .X(_085_)
  );
  sky130_fd_sc_hd__and2_2 _291_ (
    .A(_061_),
    .B(_085_),
    .X(_086_)
  );
  sky130_fd_sc_hd__buf_1 _292_ (
    .A(_086_),
    .X(_005_)
  );
  sky130_fd_sc_hd__and2_2 _293_ (
    .A(product[20]),
    .B(mcand[4]),
    .X(_087_)
  );
  sky130_fd_sc_hd__nor2_2 _294_ (
    .A(product[20]),
    .B(mcand[4]),
    .Y(_088_)
  );
  sky130_fd_sc_hd__nor2_2 _295_ (
    .A(_087_),
    .B(_088_),
    .Y(_089_)
  );
  sky130_fd_sc_hd__or2_2 _296_ (
    .A(product[19]),
    .B(mcand[3]),
    .X(_090_)
  );
  sky130_fd_sc_hd__a31o_2 _297_ (
    .A1(product[18]),
    .A2(mcand[2]),
    .A3(_090_),
    .B1(_079_),
    .X(_091_)
  );
  sky130_fd_sc_hd__a31o_2 _298_ (
    .A1(_069_),
    .A2(_072_),
    .A3(_080_),
    .B1(_091_),
    .X(_092_)
  );
  sky130_fd_sc_hd__nand2_2 _299_ (
    .A(_089_),
    .B(_092_),
    .Y(_093_)
  );
  sky130_fd_sc_hd__o21a_2 _300_ (
    .A1(_089_),
    .A2(_092_),
    .B1(_049_),
    .X(_094_)
  );
  sky130_fd_sc_hd__a22o_2 _301_ (
    .A1(product[21]),
    .A2(_054_),
    .B1(_093_),
    .B2(_094_),
    .X(_095_)
  );
  sky130_fd_sc_hd__mux2_2 _302_ (
    .A0(product[20]),
    .A1(_095_),
    .S(_057_),
    .X(_096_)
  );
  sky130_fd_sc_hd__and2_2 _303_ (
    .A(_061_),
    .B(_096_),
    .X(_097_)
  );
  sky130_fd_sc_hd__buf_1 _304_ (
    .A(_097_),
    .X(_006_)
  );
  sky130_fd_sc_hd__and2_2 _305_ (
    .A(product[21]),
    .B(mcand[5]),
    .X(_098_)
  );
  sky130_fd_sc_hd__or2_2 _306_ (
    .A(product[21]),
    .B(mcand[5]),
    .X(_099_)
  );
  sky130_fd_sc_hd__and2b_2 _307_ (
    .A_N(_098_),
    .B(_099_),
    .X(_100_)
  );
  sky130_fd_sc_hd__a21o_2 _308_ (
    .A1(_089_),
    .A2(_092_),
    .B1(_087_),
    .X(_101_)
  );
  sky130_fd_sc_hd__xor2_2 _309_ (
    .A(_100_),
    .B(_101_),
    .X(_102_)
  );
  sky130_fd_sc_hd__and3_2 _310_ (
    .A(product[22]),
    .B(_040_),
    .C(_041_),
    .X(_103_)
  );
  sky130_fd_sc_hd__a211o_2 _311_ (
    .A1(product[21]),
    .A2(_045_),
    .B1(_050_),
    .C1(_103_),
    .X(_104_)
  );
  sky130_fd_sc_hd__o211a_2 _312_ (
    .A1(_054_),
    .A2(_102_),
    .B1(_104_),
    .C1(_061_),
    .X(_007_)
  );
  sky130_fd_sc_hd__xor2_2 _313_ (
    .A(product[22]),
    .B(mcand[6]),
    .X(_105_)
  );
  sky130_fd_sc_hd__o21ai_2 _314_ (
    .A1(_098_),
    .A2(_101_),
    .B1(_099_),
    .Y(_106_)
  );
  sky130_fd_sc_hd__xnor2_2 _315_ (
    .A(_105_),
    .B(_106_),
    .Y(_107_)
  );
  sky130_fd_sc_hd__mux2_2 _316_ (
    .A0(product[23]),
    .A1(_107_),
    .S(_050_),
    .X(_108_)
  );
  sky130_fd_sc_hd__mux2_2 _317_ (
    .A0(product[22]),
    .A1(_108_),
    .S(_057_),
    .X(_109_)
  );
  sky130_fd_sc_hd__and2_2 _318_ (
    .A(_061_),
    .B(_109_),
    .X(_110_)
  );
  sky130_fd_sc_hd__buf_1 _319_ (
    .A(_110_),
    .X(_008_)
  );
  sky130_fd_sc_hd__or2_2 _320_ (
    .A(product[23]),
    .B(mcand[7]),
    .X(_111_)
  );
  sky130_fd_sc_hd__nand2_2 _321_ (
    .A(product[23]),
    .B(mcand[7]),
    .Y(_112_)
  );
  sky130_fd_sc_hd__nand2_2 _322_ (
    .A(_111_),
    .B(_112_),
    .Y(_113_)
  );
  sky130_fd_sc_hd__inv_2 _323_ (
    .A(_105_),
    .Y(_114_)
  );
  sky130_fd_sc_hd__nand2_2 _324_ (
    .A(product[22]),
    .B(mcand[6]),
    .Y(_115_)
  );
  sky130_fd_sc_hd__o21a_2 _325_ (
    .A1(_114_),
    .A2(_106_),
    .B1(_115_),
    .X(_116_)
  );
  sky130_fd_sc_hd__xor2_2 _326_ (
    .A(_113_),
    .B(_116_),
    .X(_117_)
  );
  sky130_fd_sc_hd__mux2_2 _327_ (
    .A0(product[24]),
    .A1(_117_),
    .S(_050_),
    .X(_118_)
  );
  sky130_fd_sc_hd__mux2_2 _328_ (
    .A0(product[23]),
    .A1(_118_),
    .S(_057_),
    .X(_119_)
  );
  sky130_fd_sc_hd__and2_2 _329_ (
    .A(_061_),
    .B(_119_),
    .X(_120_)
  );
  sky130_fd_sc_hd__buf_1 _330_ (
    .A(_120_),
    .X(_009_)
  );
  sky130_fd_sc_hd__and3_2 _331_ (
    .A(_105_),
    .B(_111_),
    .C(_112_),
    .X(_121_)
  );
  sky130_fd_sc_hd__and3_2 _332_ (
    .A(_089_),
    .B(_100_),
    .C(_121_),
    .X(_122_)
  );
  sky130_fd_sc_hd__or2_2 _333_ (
    .A(_087_),
    .B(_098_),
    .X(_123_)
  );
  sky130_fd_sc_hd__nor2_2 _334_ (
    .A(product[23]),
    .B(mcand[7]),
    .Y(_124_)
  );
  sky130_fd_sc_hd__o21ai_2 _335_ (
    .A1(_115_),
    .A2(_124_),
    .B1(_112_),
    .Y(_125_)
  );
  sky130_fd_sc_hd__a31o_2 _336_ (
    .A1(_099_),
    .A2(_121_),
    .A3(_123_),
    .B1(_125_),
    .X(_126_)
  );
  sky130_fd_sc_hd__a21oi_2 _337_ (
    .A1(_092_),
    .A2(_122_),
    .B1(_126_),
    .Y(_127_)
  );
  sky130_fd_sc_hd__xnor2_2 _338_ (
    .A(product[24]),
    .B(mcand[8]),
    .Y(_128_)
  );
  sky130_fd_sc_hd__nand2_2 _339_ (
    .A(_127_),
    .B(_128_),
    .Y(_129_)
  );
  sky130_fd_sc_hd__nor2_2 _340_ (
    .A(_127_),
    .B(_128_),
    .Y(_130_)
  );
  sky130_fd_sc_hd__nor2_2 _341_ (
    .A(_053_),
    .B(_130_),
    .Y(_131_)
  );
  sky130_fd_sc_hd__a22o_2 _342_ (
    .A1(product[25]),
    .A2(_054_),
    .B1(_129_),
    .B2(_131_),
    .X(_132_)
  );
  sky130_fd_sc_hd__mux2_2 _343_ (
    .A0(product[24]),
    .A1(_132_),
    .S(_056_),
    .X(_133_)
  );
  sky130_fd_sc_hd__and2_2 _344_ (
    .A(_061_),
    .B(_133_),
    .X(_134_)
  );
  sky130_fd_sc_hd__buf_1 _345_ (
    .A(_134_),
    .X(_010_)
  );
  sky130_fd_sc_hd__xor2_2 _346_ (
    .A(product[25]),
    .B(mcand[9]),
    .X(_135_)
  );
  sky130_fd_sc_hd__a21oi_2 _347_ (
    .A1(product[24]),
    .A2(mcand[8]),
    .B1(_130_),
    .Y(_136_)
  );
  sky130_fd_sc_hd__xnor2_2 _348_ (
    .A(_135_),
    .B(_136_),
    .Y(_137_)
  );
  sky130_fd_sc_hd__mux2_2 _349_ (
    .A0(product[26]),
    .A1(_137_),
    .S(_049_),
    .X(_138_)
  );
  sky130_fd_sc_hd__mux2_2 _350_ (
    .A0(product[25]),
    .A1(_138_),
    .S(_056_),
    .X(_139_)
  );
  sky130_fd_sc_hd__and2_2 _351_ (
    .A(_061_),
    .B(_139_),
    .X(_140_)
  );
  sky130_fd_sc_hd__buf_1 _352_ (
    .A(_140_),
    .X(_011_)
  );
  sky130_fd_sc_hd__xor2_2 _353_ (
    .A(product[26]),
    .B(mcand[10]),
    .X(_141_)
  );
  sky130_fd_sc_hd__a22o_2 _354_ (
    .A1(product[24]),
    .A2(mcand[8]),
    .B1(mcand[9]),
    .B2(product[25]),
    .X(_142_)
  );
  sky130_fd_sc_hd__o22a_2 _355_ (
    .A1(product[25]),
    .A2(mcand[9]),
    .B1(_130_),
    .B2(_142_),
    .X(_143_)
  );
  sky130_fd_sc_hd__or2_2 _356_ (
    .A(_141_),
    .B(_143_),
    .X(_144_)
  );
  sky130_fd_sc_hd__o221a_2 _357_ (
    .A1(product[25]),
    .A2(mcand[9]),
    .B1(_130_),
    .B2(_142_),
    .C1(_141_),
    .X(_145_)
  );
  sky130_fd_sc_hd__nor2_2 _358_ (
    .A(_053_),
    .B(_145_),
    .Y(_146_)
  );
  sky130_fd_sc_hd__a22o_2 _359_ (
    .A1(product[27]),
    .A2(_054_),
    .B1(_144_),
    .B2(_146_),
    .X(_147_)
  );
  sky130_fd_sc_hd__mux2_2 _360_ (
    .A0(product[26]),
    .A1(_147_),
    .S(_056_),
    .X(_148_)
  );
  sky130_fd_sc_hd__and2_2 _361_ (
    .A(_060_),
    .B(_148_),
    .X(_149_)
  );
  sky130_fd_sc_hd__buf_1 _362_ (
    .A(_149_),
    .X(_012_)
  );
  sky130_fd_sc_hd__xor2_2 _363_ (
    .A(product[27]),
    .B(mcand[11]),
    .X(_150_)
  );
  sky130_fd_sc_hd__a21oi_2 _364_ (
    .A1(product[26]),
    .A2(mcand[10]),
    .B1(_145_),
    .Y(_151_)
  );
  sky130_fd_sc_hd__xnor2_2 _365_ (
    .A(_150_),
    .B(_151_),
    .Y(_152_)
  );
  sky130_fd_sc_hd__mux2_2 _366_ (
    .A0(product[28]),
    .A1(_152_),
    .S(_049_),
    .X(_153_)
  );
  sky130_fd_sc_hd__mux2_2 _367_ (
    .A0(product[27]),
    .A1(_153_),
    .S(_056_),
    .X(_154_)
  );
  sky130_fd_sc_hd__and2_2 _368_ (
    .A(_060_),
    .B(_154_),
    .X(_155_)
  );
  sky130_fd_sc_hd__buf_1 _369_ (
    .A(_155_),
    .X(_013_)
  );
  sky130_fd_sc_hd__nor2_2 _370_ (
    .A(product[28]),
    .B(mcand[12]),
    .Y(_156_)
  );
  sky130_fd_sc_hd__and2_2 _371_ (
    .A(product[28]),
    .B(mcand[12]),
    .X(_157_)
  );
  sky130_fd_sc_hd__or2_2 _372_ (
    .A(_156_),
    .B(_157_),
    .X(_158_)
  );
  sky130_fd_sc_hd__inv_2 _373_ (
    .A(_158_),
    .Y(_159_)
  );
  sky130_fd_sc_hd__a22o_2 _374_ (
    .A1(product[26]),
    .A2(mcand[10]),
    .B1(mcand[11]),
    .B2(product[27]),
    .X(_160_)
  );
  sky130_fd_sc_hd__o22a_2 _375_ (
    .A1(product[27]),
    .A2(mcand[11]),
    .B1(_145_),
    .B2(_160_),
    .X(_161_)
  );
  sky130_fd_sc_hd__or2_2 _376_ (
    .A(_159_),
    .B(_161_),
    .X(_162_)
  );
  sky130_fd_sc_hd__o221a_2 _377_ (
    .A1(product[27]),
    .A2(mcand[11]),
    .B1(_145_),
    .B2(_160_),
    .C1(_159_),
    .X(_163_)
  );
  sky130_fd_sc_hd__nor2_2 _378_ (
    .A(_053_),
    .B(_163_),
    .Y(_164_)
  );
  sky130_fd_sc_hd__a22o_2 _379_ (
    .A1(product[29]),
    .A2(_054_),
    .B1(_162_),
    .B2(_164_),
    .X(_165_)
  );
  sky130_fd_sc_hd__mux2_2 _380_ (
    .A0(product[28]),
    .A1(_165_),
    .S(_056_),
    .X(_166_)
  );
  sky130_fd_sc_hd__and2_2 _381_ (
    .A(_060_),
    .B(_166_),
    .X(_167_)
  );
  sky130_fd_sc_hd__buf_1 _382_ (
    .A(_167_),
    .X(_014_)
  );
  sky130_fd_sc_hd__or2_2 _383_ (
    .A(product[29]),
    .B(mcand[13]),
    .X(_168_)
  );
  sky130_fd_sc_hd__nand2_2 _384_ (
    .A(product[29]),
    .B(mcand[13]),
    .Y(_169_)
  );
  sky130_fd_sc_hd__nand2_2 _385_ (
    .A(_168_),
    .B(_169_),
    .Y(_170_)
  );
  sky130_fd_sc_hd__or3_2 _386_ (
    .A(_157_),
    .B(_163_),
    .C(_170_),
    .X(_171_)
  );
  sky130_fd_sc_hd__o21ai_2 _387_ (
    .A1(_157_),
    .A2(_163_),
    .B1(_170_),
    .Y(_172_)
  );
  sky130_fd_sc_hd__o21ai_2 _388_ (
    .A1(product[30]),
    .A2(_050_),
    .B1(_057_),
    .Y(_173_)
  );
  sky130_fd_sc_hd__a31o_2 _389_ (
    .A1(_050_),
    .A2(_171_),
    .A3(_172_),
    .B1(_173_),
    .X(_174_)
  );
  sky130_fd_sc_hd__nand2_2 _390_ (
    .A(product[29]),
    .B(_045_),
    .Y(_175_)
  );
  sky130_fd_sc_hd__nor2_2 _391_ (
    .A(_059_),
    .B(_041_),
    .Y(_176_)
  );
  sky130_fd_sc_hd__buf_1 _392_ (
    .A(_176_),
    .X(_177_)
  );
  sky130_fd_sc_hd__a21oi_2 _393_ (
    .A1(_174_),
    .A2(_175_),
    .B1(_177_),
    .Y(_015_)
  );
  sky130_fd_sc_hd__nand2_2 _394_ (
    .A(product[30]),
    .B(_045_),
    .Y(_178_)
  );
  sky130_fd_sc_hd__nand2_2 _395_ (
    .A(product[31]),
    .B(_054_),
    .Y(_179_)
  );
  sky130_fd_sc_hd__and2_2 _396_ (
    .A(product[30]),
    .B(mcand[14]),
    .X(_180_)
  );
  sky130_fd_sc_hd__inv_2 _397_ (
    .A(_180_),
    .Y(_181_)
  );
  sky130_fd_sc_hd__or2b_2 _398_ (
    .A(_157_),
    .B_N(_169_),
    .X(_182_)
  );
  sky130_fd_sc_hd__o221a_2 _399_ (
    .A1(product[30]),
    .A2(mcand[14]),
    .B1(_163_),
    .B2(_182_),
    .C1(_168_),
    .X(_183_)
  );
  sky130_fd_sc_hd__nor2_2 _400_ (
    .A(product[30]),
    .B(mcand[14]),
    .Y(_184_)
  );
  sky130_fd_sc_hd__or2_2 _401_ (
    .A(_180_),
    .B(_184_),
    .X(_185_)
  );
  sky130_fd_sc_hd__o21ai_2 _402_ (
    .A1(_163_),
    .A2(_182_),
    .B1(_168_),
    .Y(_186_)
  );
  sky130_fd_sc_hd__a221o_2 _403_ (
    .A1(_181_),
    .A2(_183_),
    .B1(_185_),
    .B2(_186_),
    .C1(_054_),
    .X(_187_)
  );
  sky130_fd_sc_hd__a21o_2 _404_ (
    .A1(_179_),
    .A2(_187_),
    .B1(_045_),
    .X(_188_)
  );
  sky130_fd_sc_hd__a21oi_2 _405_ (
    .A1(_178_),
    .A2(_188_),
    .B1(_177_),
    .Y(_016_)
  );
  sky130_fd_sc_hd__or2_2 _406_ (
    .A(product[31]),
    .B(mcand[15]),
    .X(_189_)
  );
  sky130_fd_sc_hd__nand2_2 _407_ (
    .A(product[31]),
    .B(mcand[15]),
    .Y(_190_)
  );
  sky130_fd_sc_hd__or4bb_2 _408_ (
    .A(_180_),
    .B(_183_),
    .C_N(_189_),
    .D_N(_190_),
    .X(_191_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _409_ (
    .A1_N(_180_),
    .A2_N(_183_),
    .B1(_189_),
    .B2(_190_),
    .X(_192_)
  );
  sky130_fd_sc_hd__a21oi_2 _410_ (
    .A1(\acu_act[32] ),
    .A2(_057_),
    .B1(_050_),
    .Y(_193_)
  );
  sky130_fd_sc_hd__a31o_2 _411_ (
    .A1(_050_),
    .A2(_191_),
    .A3(_192_),
    .B1(_193_),
    .X(_194_)
  );
  sky130_fd_sc_hd__nand2_2 _412_ (
    .A(product[31]),
    .B(_045_),
    .Y(_195_)
  );
  sky130_fd_sc_hd__a21oi_2 _413_ (
    .A1(_194_),
    .A2(_195_),
    .B1(_177_),
    .Y(_017_)
  );
  sky130_fd_sc_hd__or3b_2 _414_ (
    .A(_180_),
    .B(_183_),
    .C_N(_190_),
    .X(_196_)
  );
  sky130_fd_sc_hd__a32o_2 _415_ (
    .A1(_050_),
    .A2(_189_),
    .A3(_196_),
    .B1(_045_),
    .B2(\acu_act[32] ),
    .X(_197_)
  );
  sky130_fd_sc_hd__and2_2 _416_ (
    .A(_060_),
    .B(_197_),
    .X(_198_)
  );
  sky130_fd_sc_hd__buf_1 _417_ (
    .A(_198_),
    .X(_018_)
  );
  sky130_fd_sc_hd__mux2_2 _418_ (
    .A0(product[1]),
    .A1(mplier[0]),
    .S(_177_),
    .X(_199_)
  );
  sky130_fd_sc_hd__mux2_2 _419_ (
    .A0(product[0]),
    .A1(_199_),
    .S(_000_),
    .X(_200_)
  );
  sky130_fd_sc_hd__buf_1 _420_ (
    .A(_200_),
    .X(_019_)
  );
  sky130_fd_sc_hd__mux2_2 _421_ (
    .A0(product[2]),
    .A1(mplier[1]),
    .S(_177_),
    .X(_201_)
  );
  sky130_fd_sc_hd__mux2_2 _422_ (
    .A0(product[1]),
    .A1(_201_),
    .S(_000_),
    .X(_202_)
  );
  sky130_fd_sc_hd__buf_1 _423_ (
    .A(_202_),
    .X(_020_)
  );
  sky130_fd_sc_hd__mux2_2 _424_ (
    .A0(product[3]),
    .A1(mplier[2]),
    .S(_177_),
    .X(_203_)
  );
  sky130_fd_sc_hd__mux2_2 _425_ (
    .A0(product[2]),
    .A1(_203_),
    .S(_000_),
    .X(_204_)
  );
  sky130_fd_sc_hd__buf_1 _426_ (
    .A(_204_),
    .X(_021_)
  );
  sky130_fd_sc_hd__mux2_2 _427_ (
    .A0(product[4]),
    .A1(mplier[3]),
    .S(_177_),
    .X(_205_)
  );
  sky130_fd_sc_hd__mux2_2 _428_ (
    .A0(product[3]),
    .A1(_205_),
    .S(_000_),
    .X(_206_)
  );
  sky130_fd_sc_hd__buf_1 _429_ (
    .A(_206_),
    .X(_022_)
  );
  sky130_fd_sc_hd__mux2_2 _430_ (
    .A0(product[5]),
    .A1(mplier[4]),
    .S(_177_),
    .X(_207_)
  );
  sky130_fd_sc_hd__mux2_2 _431_ (
    .A0(product[4]),
    .A1(_207_),
    .S(_000_),
    .X(_208_)
  );
  sky130_fd_sc_hd__buf_1 _432_ (
    .A(_208_),
    .X(_023_)
  );
  sky130_fd_sc_hd__mux2_2 _433_ (
    .A0(product[6]),
    .A1(mplier[5]),
    .S(_177_),
    .X(_209_)
  );
  sky130_fd_sc_hd__mux2_2 _434_ (
    .A0(product[5]),
    .A1(_209_),
    .S(_000_),
    .X(_210_)
  );
  sky130_fd_sc_hd__buf_1 _435_ (
    .A(_210_),
    .X(_024_)
  );
  sky130_fd_sc_hd__mux2_2 _436_ (
    .A0(product[7]),
    .A1(mplier[6]),
    .S(_177_),
    .X(_211_)
  );
  sky130_fd_sc_hd__mux2_2 _437_ (
    .A0(product[6]),
    .A1(_211_),
    .S(_000_),
    .X(_212_)
  );
  sky130_fd_sc_hd__buf_1 _438_ (
    .A(_212_),
    .X(_025_)
  );
  sky130_fd_sc_hd__mux2_2 _439_ (
    .A0(product[8]),
    .A1(mplier[7]),
    .S(_176_),
    .X(_213_)
  );
  sky130_fd_sc_hd__mux2_2 _440_ (
    .A0(product[7]),
    .A1(_213_),
    .S(_000_),
    .X(_214_)
  );
  sky130_fd_sc_hd__buf_1 _441_ (
    .A(_214_),
    .X(_026_)
  );
  sky130_fd_sc_hd__mux2_2 _442_ (
    .A0(product[9]),
    .A1(mplier[8]),
    .S(_176_),
    .X(_215_)
  );
  sky130_fd_sc_hd__mux2_2 _443_ (
    .A0(product[8]),
    .A1(_215_),
    .S(_000_),
    .X(_216_)
  );
  sky130_fd_sc_hd__buf_1 _444_ (
    .A(_216_),
    .X(_027_)
  );
  sky130_fd_sc_hd__mux2_2 _445_ (
    .A0(product[10]),
    .A1(mplier[9]),
    .S(_176_),
    .X(_217_)
  );
  sky130_fd_sc_hd__mux2_2 _446_ (
    .A0(product[9]),
    .A1(_217_),
    .S(_044_),
    .X(_218_)
  );
  sky130_fd_sc_hd__buf_1 _447_ (
    .A(_218_),
    .X(_028_)
  );
  sky130_fd_sc_hd__mux2_2 _448_ (
    .A0(product[11]),
    .A1(mplier[10]),
    .S(_176_),
    .X(_219_)
  );
  sky130_fd_sc_hd__mux2_2 _449_ (
    .A0(product[10]),
    .A1(_219_),
    .S(_044_),
    .X(_220_)
  );
  sky130_fd_sc_hd__buf_1 _450_ (
    .A(_220_),
    .X(_029_)
  );
  sky130_fd_sc_hd__mux2_2 _451_ (
    .A0(product[12]),
    .A1(mplier[11]),
    .S(_176_),
    .X(_221_)
  );
  sky130_fd_sc_hd__mux2_2 _452_ (
    .A0(product[11]),
    .A1(_221_),
    .S(_044_),
    .X(_222_)
  );
  sky130_fd_sc_hd__buf_1 _453_ (
    .A(_222_),
    .X(_030_)
  );
  sky130_fd_sc_hd__mux2_2 _454_ (
    .A0(product[13]),
    .A1(mplier[12]),
    .S(_176_),
    .X(_223_)
  );
  sky130_fd_sc_hd__mux2_2 _455_ (
    .A0(product[12]),
    .A1(_223_),
    .S(_044_),
    .X(_224_)
  );
  sky130_fd_sc_hd__buf_1 _456_ (
    .A(_224_),
    .X(_031_)
  );
  sky130_fd_sc_hd__mux2_2 _457_ (
    .A0(product[14]),
    .A1(mplier[13]),
    .S(_176_),
    .X(_225_)
  );
  sky130_fd_sc_hd__mux2_2 _458_ (
    .A0(product[13]),
    .A1(_225_),
    .S(_044_),
    .X(_226_)
  );
  sky130_fd_sc_hd__buf_1 _459_ (
    .A(_226_),
    .X(_032_)
  );
  sky130_fd_sc_hd__mux2_2 _460_ (
    .A0(product[15]),
    .A1(mplier[14]),
    .S(_176_),
    .X(_227_)
  );
  sky130_fd_sc_hd__mux2_2 _461_ (
    .A0(product[14]),
    .A1(_227_),
    .S(_044_),
    .X(_228_)
  );
  sky130_fd_sc_hd__buf_1 _462_ (
    .A(_228_),
    .X(_033_)
  );
  sky130_fd_sc_hd__mux2_2 _463_ (
    .A0(product[16]),
    .A1(mplier[15]),
    .S(_176_),
    .X(_229_)
  );
  sky130_fd_sc_hd__mux2_2 _464_ (
    .A0(product[15]),
    .A1(_229_),
    .S(_044_),
    .X(_230_)
  );
  sky130_fd_sc_hd__buf_1 _465_ (
    .A(_230_),
    .X(_034_)
  );
  sky130_fd_sc_hd__a21oi_2 _466_ (
    .A1(_042_),
    .A2(_057_),
    .B1(\cnt_act[0] ),
    .Y(_231_)
  );
  sky130_fd_sc_hd__and3_2 _467_ (
    .A(\cnt_act[0] ),
    .B(_056_),
    .C(_047_),
    .X(_232_)
  );
  sky130_fd_sc_hd__nor3_2 _468_ (
    .A(st),
    .B(_231_),
    .C(_232_),
    .Y(_035_)
  );
  sky130_fd_sc_hd__and2_2 _469_ (
    .A(\cnt_act[1] ),
    .B(_232_),
    .X(_233_)
  );
  sky130_fd_sc_hd__nor2_2 _470_ (
    .A(st),
    .B(_233_),
    .Y(_234_)
  );
  sky130_fd_sc_hd__o21a_2 _471_ (
    .A1(\cnt_act[1] ),
    .A2(_232_),
    .B1(_234_),
    .X(_036_)
  );
  sky130_fd_sc_hd__and3_2 _472_ (
    .A(\cnt_act[2] ),
    .B(\cnt_act[1] ),
    .C(_232_),
    .X(_235_)
  );
  sky130_fd_sc_hd__nor2_2 _473_ (
    .A(st),
    .B(_235_),
    .Y(_236_)
  );
  sky130_fd_sc_hd__o21a_2 _474_ (
    .A1(\cnt_act[2] ),
    .A2(_233_),
    .B1(_236_),
    .X(_037_)
  );
  sky130_fd_sc_hd__a21oi_2 _475_ (
    .A1(\cnt_act[3] ),
    .A2(_235_),
    .B1(st),
    .Y(_237_)
  );
  sky130_fd_sc_hd__o21a_2 _476_ (
    .A1(\cnt_act[3] ),
    .A2(_235_),
    .B1(_237_),
    .X(_038_)
  );
  sky130_fd_sc_hd__and2_2 _477_ (
    .A(\cnt_act[4] ),
    .B(_237_),
    .X(_238_)
  );
  sky130_fd_sc_hd__buf_1 _478_ (
    .A(_238_),
    .X(_039_)
  );
  sky130_fd_sc_hd__dfxtp_2 _479_ (
    .CLK(clk),
    .D(_000_),
    .Q(\estado_act[0] )
  );
  sky130_fd_sc_hd__dfxtp_2 _480_ (
    .CLK(clk),
    .D(_001_),
    .Q(\estado_act[1] )
  );
  sky130_fd_sc_hd__dfxtp_2 _481_ (
    .CLK(clk),
    .D(_002_),
    .Q(product[16])
  );
  sky130_fd_sc_hd__dfxtp_2 _482_ (
    .CLK(clk),
    .D(_003_),
    .Q(product[17])
  );
  sky130_fd_sc_hd__dfxtp_2 _483_ (
    .CLK(clk),
    .D(_004_),
    .Q(product[18])
  );
  sky130_fd_sc_hd__dfxtp_2 _484_ (
    .CLK(clk),
    .D(_005_),
    .Q(product[19])
  );
  sky130_fd_sc_hd__dfxtp_2 _485_ (
    .CLK(clk),
    .D(_006_),
    .Q(product[20])
  );
  sky130_fd_sc_hd__dfxtp_2 _486_ (
    .CLK(clk),
    .D(_007_),
    .Q(product[21])
  );
  sky130_fd_sc_hd__dfxtp_2 _487_ (
    .CLK(clk),
    .D(_008_),
    .Q(product[22])
  );
  sky130_fd_sc_hd__dfxtp_2 _488_ (
    .CLK(clk),
    .D(_009_),
    .Q(product[23])
  );
  sky130_fd_sc_hd__dfxtp_2 _489_ (
    .CLK(clk),
    .D(_010_),
    .Q(product[24])
  );
  sky130_fd_sc_hd__dfxtp_2 _490_ (
    .CLK(clk),
    .D(_011_),
    .Q(product[25])
  );
  sky130_fd_sc_hd__dfxtp_2 _491_ (
    .CLK(clk),
    .D(_012_),
    .Q(product[26])
  );
  sky130_fd_sc_hd__dfxtp_2 _492_ (
    .CLK(clk),
    .D(_013_),
    .Q(product[27])
  );
  sky130_fd_sc_hd__dfxtp_2 _493_ (
    .CLK(clk),
    .D(_014_),
    .Q(product[28])
  );
  sky130_fd_sc_hd__dfxtp_2 _494_ (
    .CLK(clk),
    .D(_015_),
    .Q(product[29])
  );
  sky130_fd_sc_hd__dfxtp_2 _495_ (
    .CLK(clk),
    .D(_016_),
    .Q(product[30])
  );
  sky130_fd_sc_hd__dfxtp_2 _496_ (
    .CLK(clk),
    .D(_017_),
    .Q(product[31])
  );
  sky130_fd_sc_hd__dfxtp_2 _497_ (
    .CLK(clk),
    .D(_018_),
    .Q(\acu_act[32] )
  );
  sky130_fd_sc_hd__dfxtp_2 _498_ (
    .CLK(clk),
    .D(_019_),
    .Q(product[0])
  );
  sky130_fd_sc_hd__dfxtp_2 _499_ (
    .CLK(clk),
    .D(_020_),
    .Q(product[1])
  );
  sky130_fd_sc_hd__dfxtp_2 _500_ (
    .CLK(clk),
    .D(_021_),
    .Q(product[2])
  );
  sky130_fd_sc_hd__dfxtp_2 _501_ (
    .CLK(clk),
    .D(_022_),
    .Q(product[3])
  );
  sky130_fd_sc_hd__dfxtp_2 _502_ (
    .CLK(clk),
    .D(_023_),
    .Q(product[4])
  );
  sky130_fd_sc_hd__dfxtp_2 _503_ (
    .CLK(clk),
    .D(_024_),
    .Q(product[5])
  );
  sky130_fd_sc_hd__dfxtp_2 _504_ (
    .CLK(clk),
    .D(_025_),
    .Q(product[6])
  );
  sky130_fd_sc_hd__dfxtp_2 _505_ (
    .CLK(clk),
    .D(_026_),
    .Q(product[7])
  );
  sky130_fd_sc_hd__dfxtp_2 _506_ (
    .CLK(clk),
    .D(_027_),
    .Q(product[8])
  );
  sky130_fd_sc_hd__dfxtp_2 _507_ (
    .CLK(clk),
    .D(_028_),
    .Q(product[9])
  );
  sky130_fd_sc_hd__dfxtp_2 _508_ (
    .CLK(clk),
    .D(_029_),
    .Q(product[10])
  );
  sky130_fd_sc_hd__dfxtp_2 _509_ (
    .CLK(clk),
    .D(_030_),
    .Q(product[11])
  );
  sky130_fd_sc_hd__dfxtp_2 _510_ (
    .CLK(clk),
    .D(_031_),
    .Q(product[12])
  );
  sky130_fd_sc_hd__dfxtp_2 _511_ (
    .CLK(clk),
    .D(_032_),
    .Q(product[13])
  );
  sky130_fd_sc_hd__dfxtp_2 _512_ (
    .CLK(clk),
    .D(_033_),
    .Q(product[14])
  );
  sky130_fd_sc_hd__dfxtp_2 _513_ (
    .CLK(clk),
    .D(_034_),
    .Q(product[15])
  );
  sky130_fd_sc_hd__dfxtp_2 _514_ (
    .CLK(clk),
    .D(_035_),
    .Q(\cnt_act[0] )
  );
  sky130_fd_sc_hd__dfxtp_2 _515_ (
    .CLK(clk),
    .D(_036_),
    .Q(\cnt_act[1] )
  );
  sky130_fd_sc_hd__dfxtp_2 _516_ (
    .CLK(clk),
    .D(_037_),
    .Q(\cnt_act[2] )
  );
  sky130_fd_sc_hd__dfxtp_2 _517_ (
    .CLK(clk),
    .D(_038_),
    .Q(\cnt_act[3] )
  );
  sky130_fd_sc_hd__dfxtp_2 _518_ (
    .CLK(clk),
    .D(_039_),
    .Q(\cnt_act[4] )
  );
endmodule
