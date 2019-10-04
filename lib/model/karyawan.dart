class karyawan {
  bool status;
  String message;
  String token;
  List<Data> data;

  karyawan({this.status, this.message, this.token, this.data});

  karyawan.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String karId;
  String karNik;
  String karNama;
  String karGol;
  String karStatus;
  String karHp;
  String karEmail;
  String karAlamat;
  String karFoto;
  String userId;
  String userName;
  String userPass;
  String userLevel;
  String userStatus;
  String userToken;

  Data(
      {this.karId,
        this.karNik,
        this.karNama,
        this.karGol,
        this.karStatus,
        this.karHp,
        this.karEmail,
        this.karAlamat,
        this.karFoto,
        this.userId,
        this.userName,
        this.userPass,
        this.userLevel,
        this.userStatus,
        this.userToken});

  Data.fromJson(Map<String, dynamic> json) {
    karId = json['karId'];
    karNik = json['karNik'];
    karNama = json['karNama'];
    karGol = json['karGol'];
    karStatus = json['karStatus'];
    karHp = json['karHp'];
    karEmail = json['karEmail'];
    karAlamat = json['karAlamat'];
    karFoto = json['karFoto'];
    userId = json['userId'];
    userName = json['userName'];
    userPass = json['userPass'];
    userLevel = json['userLevel'];
    userStatus = json['userStatus'];
    userToken = json['userToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['karId'] = this.karId;
    data['karNik'] = this.karNik;
    data['karNama'] = this.karNama;
    data['karGol'] = this.karGol;
    data['karStatus'] = this.karStatus;
    data['karHp'] = this.karHp;
    data['karEmail'] = this.karEmail;
    data['karAlamat'] = this.karAlamat;
    data['karFoto'] = this.karFoto;
    data['userId'] = this.userId;
    data['userName'] = this.userName;
    data['userPass'] = this.userPass;
    data['userLevel'] = this.userLevel;
    data['userStatus'] = this.userStatus;
    data['userToken'] = this.userToken;
    return data;
  }
}