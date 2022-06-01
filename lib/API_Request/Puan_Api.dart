class PaunAPI {
  String sira;
  String logo;
  String name;
  String oOO;
  String gGG;
  String bBB;
  String mMM;
  String aAA;
  String yYY;
  String aVAV;
  String puan;

  PaunAPI(
      {this.sira,
      this.logo,
      this.name,
      this.oOO,
      this.gGG,
      this.bBB,
      this.mMM,
      this.aAA,
      this.yYY,
      this.aVAV,
      this.puan});

  PaunAPI.fromJson(Map<String, dynamic> json) {
    sira = json['sira'];
    logo = json['logo'];
    name = json['name'];
    oOO = json['OOO'];
    gGG = json['GGG'];
    bBB = json['BBB'];
    mMM = json['MMM'];
    aAA = json['AAA'];
    yYY = json['YYY'];
    aVAV = json['AVAV'];
    puan = json['puan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sira'] = this.sira;
    data['logo'] = this.logo;
    data['name'] = this.name;
    data['OOO'] = this.oOO;
    data['GGG'] = this.gGG;
    data['BBB'] = this.bBB;
    data['MMM'] = this.mMM;
    data['AAA'] = this.aAA;
    data['YYY'] = this.yYY;
    data['AVAV'] = this.aVAV;
    data['puan'] = this.puan;
    return data;
  }
}
