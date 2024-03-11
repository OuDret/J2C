/* Generated by Yosys 0.32+74 (git sha1 b739213d9, gcc 11.4.0-1ubuntu1~22.04 -fPIC -Os) */

(* dynports =  1  *)
(* hdlname = "\\counter" *)
(* src = "out/counter.v:1.1-13.10" *)
module counter(clk, rst, out);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  (* src = "out/counter.v:1.55-1.58" *)
  input clk;
  wire clk;
  (* src = "out/counter.v:3.58-3.61" *)
  output [5:0] out;
  wire [5:0] out;
  (* src = "out/counter.v:2.23-2.26" *)
  input rst;
  wire rst;
  NOT _28_ (
    .A(out[2]),
    .Y(_05_)
  );
  NOR _29_ (
    .A(out[1]),
    .B(out[0]),
    .Y(_06_)
  );
  NOT _30_ (
    .A(_06_),
    .Y(_07_)
  );
  NOR _31_ (
    .A(out[2]),
    .B(out[3]),
    .Y(_08_)
  );
  NAND _32_ (
    .A(_06_),
    .B(_08_),
    .Y(_09_)
  );
  NAND _33_ (
    .A(out[4]),
    .B(_09_),
    .Y(_10_)
  );
  NOR _34_ (
    .A(out[5]),
    .B(rst),
    .Y(_11_)
  );
  NAND _35_ (
    .A(_10_),
    .B(_11_),
    .Y(_12_)
  );
  NOR _36_ (
    .A(out[0]),
    .B(_12_),
    .Y(_00_)
  );
  NAND _37_ (
    .A(out[1]),
    .B(out[0]),
    .Y(_13_)
  );
  NOT _38_ (
    .A(_13_),
    .Y(_14_)
  );
  NAND _39_ (
    .A(_07_),
    .B(_13_),
    .Y(_15_)
  );
  NOR _40_ (
    .A(_12_),
    .B(_15_),
    .Y(_01_)
  );
  NAND _41_ (
    .A(_05_),
    .B(_13_),
    .Y(_16_)
  );
  NOR _42_ (
    .A(_05_),
    .B(_13_),
    .Y(_17_)
  );
  NAND _43_ (
    .A(out[2]),
    .B(_14_),
    .Y(_18_)
  );
  NAND _44_ (
    .A(_16_),
    .B(_18_),
    .Y(_19_)
  );
  NOR _45_ (
    .A(_12_),
    .B(_19_),
    .Y(_02_)
  );
  NOR _46_ (
    .A(out[3]),
    .B(_17_),
    .Y(_20_)
  );
  NOT _47_ (
    .A(_20_),
    .Y(_21_)
  );
  NAND _48_ (
    .A(out[3]),
    .B(_17_),
    .Y(_22_)
  );
  NAND _49_ (
    .A(_21_),
    .B(_22_),
    .Y(_23_)
  );
  NOR _50_ (
    .A(_12_),
    .B(_23_),
    .Y(_03_)
  );
  NAND _51_ (
    .A(out[4]),
    .B(_22_),
    .Y(_24_)
  );
  NOT _52_ (
    .A(_24_),
    .Y(_25_)
  );
  NOR _53_ (
    .A(out[4]),
    .B(_22_),
    .Y(_26_)
  );
  NOR _54_ (
    .A(_25_),
    .B(_26_),
    .Y(_27_)
  );
  NOR _55_ (
    .A(_12_),
    .B(_27_),
    .Y(_04_)
  );
  (* src = "out/counter.v:5.5-12.8" *)
  DFF_P _56_ (
    .C(clk),
    .D(_00_),
    .Q(out[0])
  );
  (* src = "out/counter.v:5.5-12.8" *)
  DFF_P _57_ (
    .C(clk),
    .D(_01_),
    .Q(out[1])
  );
  (* src = "out/counter.v:5.5-12.8" *)
  DFF_P _58_ (
    .C(clk),
    .D(_02_),
    .Q(out[2])
  );
  (* src = "out/counter.v:5.5-12.8" *)
  DFF_P _59_ (
    .C(clk),
    .D(_03_),
    .Q(out[3])
  );
  (* src = "out/counter.v:5.5-12.8" *)
  DFF_P _60_ (
    .C(clk),
    .D(_04_),
    .Q(out[4])
  );
  (* src = "out/counter.v:5.5-12.8" *)
  DFF_P _61_ (
    .C(clk),
    .D(1'h0),
    .Q(out[5])
  );
endmodule

(* hdlname = "\\master" *)
(* dynports =  1  *)
(* top =  1  *)
(* src = "out/master.v:2.1-45.10" *)
module master(clk, data, rst, sda, scl);
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
  (* src = "out/master.v:22.6-22.33" *)
  wire _010_;
  (* src = "out/master.v:26.6-26.22" *)
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
  (* force_downto = 32'd1 *)
  (* src = "out/master.v:0.0-0.0|/usr/local/bin/../share/yosys/techmap.v:137.23-137.24" *)
  wire _079_;
  (* src = "out/master.v:2.59-2.62" *)
  input clk;
  wire clk;
  (* src = "out/master.v:8.37-8.42" *)
  wire [5:0] count;
  (* src = "out/master.v:3.48-3.52" *)
  input [7:0] data;
  wire [7:0] data;
  (* src = "out/master.v:9.27-9.40" *)
  wire [7:0] data_register;
  (* src = "out/master.v:4.28-4.31" *)
  input rst;
  wire rst;
  (* src = "out/master.v:6.28-6.31" *)
  output scl;
  wire scl;
  (* src = "out/master.v:5.28-5.31" *)
  output sda;
  wire sda;
  NOT _080_ (
    .A(rst),
    .Y(_027_)
  );
  NOT _081_ (
    .A(count[5]),
    .Y(_028_)
  );
  NOT _082_ (
    .A(count[3]),
    .Y(_029_)
  );
  NOT _083_ (
    .A(count[1]),
    .Y(_030_)
  );
  NOT _084_ (
    .A(count[2]),
    .Y(_031_)
  );
  NOT _085_ (
    .A(count[4]),
    .Y(_032_)
  );
  NOR _086_ (
    .A(count[1]),
    .B(count[2]),
    .Y(_033_)
  );
  NOT _087_ (
    .A(_033_),
    .Y(_034_)
  );
  NOR _088_ (
    .A(count[3]),
    .B(count[4]),
    .Y(_035_)
  );
  NAND _089_ (
    .A(_033_),
    .B(_035_),
    .Y(_036_)
  );
  NOR _090_ (
    .A(count[5]),
    .B(_036_),
    .Y(_037_)
  );
  NAND _091_ (
    .A(count[0]),
    .B(_037_),
    .Y(_038_)
  );
  NOT _092_ (
    .A(_038_),
    .Y(_039_)
  );
  NAND _093_ (
    .A(_027_),
    .B(_039_),
    .Y(_040_)
  );
  NOT _094_ (
    .A(_040_),
    .Y(_010_)
  );
  NAND _095_ (
    .A(data_register[0]),
    .B(_040_),
    .Y(_041_)
  );
  NAND _096_ (
    .A(data[0]),
    .B(_010_),
    .Y(_042_)
  );
  NAND _097_ (
    .A(_041_),
    .B(_042_),
    .Y(_000_)
  );
  NAND _098_ (
    .A(data_register[1]),
    .B(_040_),
    .Y(_043_)
  );
  NAND _099_ (
    .A(data[1]),
    .B(_010_),
    .Y(_044_)
  );
  NAND _100_ (
    .A(_043_),
    .B(_044_),
    .Y(_001_)
  );
  NAND _101_ (
    .A(data_register[2]),
    .B(_040_),
    .Y(_045_)
  );
  NAND _102_ (
    .A(data[2]),
    .B(_010_),
    .Y(_046_)
  );
  NAND _103_ (
    .A(_045_),
    .B(_046_),
    .Y(_002_)
  );
  NAND _104_ (
    .A(data_register[3]),
    .B(_040_),
    .Y(_047_)
  );
  NAND _105_ (
    .A(data[3]),
    .B(_010_),
    .Y(_048_)
  );
  NAND _106_ (
    .A(_047_),
    .B(_048_),
    .Y(_003_)
  );
  NAND _107_ (
    .A(data_register[4]),
    .B(_040_),
    .Y(_049_)
  );
  NAND _108_ (
    .A(data[4]),
    .B(_010_),
    .Y(_050_)
  );
  NAND _109_ (
    .A(_049_),
    .B(_050_),
    .Y(_004_)
  );
  NAND _110_ (
    .A(data_register[5]),
    .B(_040_),
    .Y(_051_)
  );
  NAND _111_ (
    .A(data[5]),
    .B(_010_),
    .Y(_052_)
  );
  NAND _112_ (
    .A(_051_),
    .B(_052_),
    .Y(_005_)
  );
  NAND _113_ (
    .A(data_register[6]),
    .B(_040_),
    .Y(_053_)
  );
  NAND _114_ (
    .A(data[6]),
    .B(_010_),
    .Y(_054_)
  );
  NAND _115_ (
    .A(_053_),
    .B(_054_),
    .Y(_006_)
  );
  NAND _116_ (
    .A(data_register[7]),
    .B(_040_),
    .Y(_055_)
  );
  NAND _117_ (
    .A(data[7]),
    .B(_010_),
    .Y(_056_)
  );
  NAND _118_ (
    .A(_055_),
    .B(_056_),
    .Y(_007_)
  );
  NAND _119_ (
    .A(sda),
    .B(_028_),
    .Y(_057_)
  );
  NOR _120_ (
    .A(count[2]),
    .B(_057_),
    .Y(_058_)
  );
  NAND _121_ (
    .A(_035_),
    .B(_058_),
    .Y(_059_)
  );
  NOR _122_ (
    .A(count[0]),
    .B(_037_),
    .Y(_060_)
  );
  NAND _123_ (
    .A(_059_),
    .B(_060_),
    .Y(_061_)
  );
  NOR _124_ (
    .A(data_register[0]),
    .B(count[2]),
    .Y(_062_)
  );
  NOR _125_ (
    .A(data_register[2]),
    .B(_031_),
    .Y(_063_)
  );
  NOR _126_ (
    .A(_062_),
    .B(_063_),
    .Y(_064_)
  );
  NOR _127_ (
    .A(_030_),
    .B(_064_),
    .Y(_065_)
  );
  NOR _128_ (
    .A(data_register[1]),
    .B(_031_),
    .Y(_066_)
  );
  NOR _129_ (
    .A(data_register[7]),
    .B(count[2]),
    .Y(_067_)
  );
  NOR _130_ (
    .A(_066_),
    .B(_067_),
    .Y(_068_)
  );
  NOR _131_ (
    .A(count[1]),
    .B(_068_),
    .Y(_069_)
  );
  NOR _132_ (
    .A(_065_),
    .B(_069_),
    .Y(_070_)
  );
  NOR _133_ (
    .A(count[3]),
    .B(_070_),
    .Y(_071_)
  );
  NOR _134_ (
    .A(count[3]),
    .B(_034_),
    .Y(_072_)
  );
  NOR _135_ (
    .A(_032_),
    .B(_072_),
    .Y(_073_)
  );
  NAND _136_ (
    .A(_028_),
    .B(_036_),
    .Y(_074_)
  );
  NOR _137_ (
    .A(_073_),
    .B(_074_),
    .Y(_075_)
  );
  NOR _138_ (
    .A(data_register[4]),
    .B(count[2]),
    .Y(_076_)
  );
  NOR _139_ (
    .A(data_register[6]),
    .B(_031_),
    .Y(_077_)
  );
  NOR _140_ (
    .A(_076_),
    .B(_077_),
    .Y(_078_)
  );
  NOR _141_ (
    .A(_030_),
    .B(_078_),
    .Y(_012_)
  );
  NOR _142_ (
    .A(data_register[5]),
    .B(_031_),
    .Y(_013_)
  );
  NOR _143_ (
    .A(data_register[3]),
    .B(count[2]),
    .Y(_014_)
  );
  NOR _144_ (
    .A(_013_),
    .B(_014_),
    .Y(_015_)
  );
  NOR _145_ (
    .A(count[1]),
    .B(_015_),
    .Y(_016_)
  );
  NOR _146_ (
    .A(_012_),
    .B(_016_),
    .Y(_017_)
  );
  NOR _147_ (
    .A(_029_),
    .B(_017_),
    .Y(_018_)
  );
  NOR _148_ (
    .A(_071_),
    .B(_018_),
    .Y(_019_)
  );
  NAND _149_ (
    .A(_075_),
    .B(_019_),
    .Y(_020_)
  );
  NOT _150_ (
    .A(_020_),
    .Y(_079_)
  );
  NAND _151_ (
    .A(count[0]),
    .B(_020_),
    .Y(_021_)
  );
  NAND _152_ (
    .A(_061_),
    .B(_021_),
    .Y(_022_)
  );
  NAND _153_ (
    .A(_027_),
    .B(_022_),
    .Y(_008_)
  );
  NOR _154_ (
    .A(scl),
    .B(_038_),
    .Y(_023_)
  );
  NOR _155_ (
    .A(_060_),
    .B(_023_),
    .Y(_024_)
  );
  NOR _156_ (
    .A(rst),
    .B(_024_),
    .Y(_025_)
  );
  NOT _157_ (
    .A(_025_),
    .Y(_009_)
  );
  NAND _158_ (
    .A(_027_),
    .B(count[0]),
    .Y(_026_)
  );
  NOR _159_ (
    .A(_037_),
    .B(_026_),
    .Y(_011_)
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _160_ (
    .C(clk),
    .D(_000_),
    .Q(data_register[0])
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _161_ (
    .C(clk),
    .D(_001_),
    .Q(data_register[1])
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _162_ (
    .C(clk),
    .D(_002_),
    .Q(data_register[2])
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _163_ (
    .C(clk),
    .D(_003_),
    .Q(data_register[3])
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _164_ (
    .C(clk),
    .D(_004_),
    .Q(data_register[4])
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _165_ (
    .C(clk),
    .D(_005_),
    .Q(data_register[5])
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _166_ (
    .C(clk),
    .D(_006_),
    .Q(data_register[6])
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _167_ (
    .C(clk),
    .D(_007_),
    .Q(data_register[7])
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _168_ (
    .C(clk),
    .D(_008_),
    .Q(sda)
  );
  (* src = "out/master.v:13.2-44.5" *)
  DFF_P _169_ (
    .C(clk),
    .D(_009_),
    .Q(scl)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "out/master.v:11.10-11.29" *)
  counter c1 (
    .clk(clk),
    .out(count),
    .rst(rst)
  );
  always @(posedge clk) begin
    if (_010_)
      $write("Start Patron 1\n");
    if (_011_)
      $write("%2d\n", $unsigned(count));
    if (_011_)
      $write("%1d\n", $unsigned(_079_));
    if (_011_)
      $write("---\n");
  end
endmodule
