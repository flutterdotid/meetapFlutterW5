import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class strings {
  //STRING
  static const String app_name = "SIKAR 1.0";
  static const String app_title = "PT. meetAp Mobile Developer";

  static const base_url = 'http://kailham.com/apiSikar/';
  static const token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ3ZWIiOiJodHRwOlwvXC9rYWlsaGFtLmNvbSJ9.cGCF3rTk2yvcvL9JYLgQpeONXDRYq5iC0Hj56ENCnI8';
  static const imageUrl = 'http://kailham.com/apiSikar/images/karyawan/';
  static const imageUrlEmpty =
      'https://lejeunefoundation.org/wp-content/uploads/2017/06/male.jpg';

  static const String text_home = "Home";
  static const String text_attendance = "Attendance";
  static const String text_profile = "Profile";
  static const String text_profil = "Profile";
  static const String text_sallary = "Sallary";
  static const String text_login = "Login";
  static const String text_login_hint = "Pin Code";
}

class sizes{
  //SIZE
  static const bigRadius = 66.0;
  static const buttonHeight = 24.0;
}

class pages{
  //PAGES
  static const loginPageTag = 'LoginPage';
  static const homePageTag = 'HomePage';
}

class colors {
  //COLOR
  static const ColorPrimaryDark = Color.fromRGBO(58, 66, 86, 1.0);
  //static const ColorPrimary = Color.fromRGBO(64, 75, 96, .9);

//  static const Color ColorPrimaryDark= Colors.red;
  static const Color ColorPrimary = Colors.green;

  static const Color ColorTeks = Colors.white;
  static const Color ColorTeksError = Colors.red;
  static const Color ColorButton = Colors.green;
  static const Color ColorButtonGradient = Colors.greenAccent;
  static const Color ColorIcon = Colors.white;
}

class icons {
  //ICON
  static const IconData icon_app = Icons.android;
  static const IconData icon_home = Icons.home;
  static const IconData icon_attendance = Icons.timelapse;
  static const IconData icon_sallary = Icons.monetization_on;
  static const IconData icon_profile = Icons.people_outline;
  static const IconData icon_back = Icons.arrow_back;
  static const IconData icon_login_email = Icons.alternate_email;
  static const IconData icon_login_password = Icons.lock;
}

class images {
  //IMAGE
  static const String img_logo = "assets/images/logo.jpg";
  static const String img_header = "assets/images/header.jpg";
  static const String img_profil = "assets/images/profil.jpg";

  static const String img_attendance_hadir = "assets/images/icon_hadir.png";
  static const String img_attendance_libur = "assets/images/icon_libur.png";
  static const String img_attendance_cuti = "assets/images/icon_cuti.png";
  static const String img_attendance_ijin = "assets/images/icon_ijin.png";
  static const String img__attendance_alpa = "assets/images/icon_alpa.png";

  static const String img_bulan1 = "assets/images/m1.jpg";
  static const String img_bulan2 = "assets/images/m2.jpg";
  static const String img_bulan3 = "assets/images/m3.jpg";
  static const String img_bulan4 = "assets/images/m4.jpg";
  static const String img_bulan5 = "assets/images/m5.jpg";
  static const String img_bulan6 = "assets/images/m6.jpg";
  static const String img_bulan7 = "assets/images/m7.jpg";
  static const String img_bulan8 = "assets/images/m8.jpg";
  static const String img_bulan9 = "assets/images/m9.jpg";
  static const String img_bulan10 = "assets/images/m10.jpg";
  static const String img_bulan11 = "assets/images/m11.jpg";
  static const String img_bulan12 = "assets/images/m12.jpg";
}

class datas{

  static const List<String> data_absen_tgl =[
    '11 Jun 2019',
    '12 Jun 2019',
    '13 Jun 2019',
    '14 Jun 2019',
    '15 Jun 2019',
    '16 Jun 2019',
    '17 Jun 2019',
    '18 Jun 2019',
    '19 Jun 2019',
    '20 Jun 2019',
    '21 Jun 2019',
    '22 Jun 2019',
    '23 Jun 2019',
    '24 Jun 2019',
    '25 Jun 2019',
    '26 Jun 2019',
    '27 Jun 2019',
    '28 Jun 2019',
    '29 Jun 2019',
    '30 Jun 2019',
  ];

  static const List<String> data_absen_status = [
    '1',
    '1',
    '0',
    '1',
    '2',
    '2',
    '3',
    '3',
    '1',
    '1',
    '1',
    '2',
    '2',
    '1',
    '1',
    '4',
    '0',
    '1',
    '2',
    '2',
  ];

}

class absen{
  static String findAbsenStatus(String value){
    String result;

    if(value=='1'){
      result = "Hadir";
    }else if(value=='2'){
      result = "Libur";
    }else if(value=='3'){
      result = "Cuti";
    }else if(value=='4'){
      result = "Ijin";
    }else if(value=='0'){
      result = "Alpa";
    }

    return result;
  }

  static String findAbsenIcon(String value){
    String result;

    if(value=='1'){
      result = images.img_attendance_hadir;
    }else if(value=='2'){
      result = images.img_attendance_libur;
    }else if(value=='3'){
      result = images.img_attendance_cuti;
    }else if(value=='4'){
      result = images.img_attendance_ijin;
    }else if(value=='0'){
      result = images.img__attendance_alpa;
    }

    return result;
  }



  static String findMonthIcon(String value){
    String result;

    if(value=='1'){
      result = images.img_bulan1;
    }else if(value=='2'){
      result = images.img_bulan2;
    }else if(value=='3'){
      result = images.img_bulan3;
    }else if(value=='4'){
      result = images.img_bulan4;
    }else if(value=='5'){
      result = images.img_bulan5;
    }else if(value=='6'){
      result = images.img_bulan6;
    }else if(value=='7'){
      result = images.img_bulan7;
    }else if(value=='8'){
      result = images.img_bulan8;
    }else if(value=='9'){
      result = images.img_bulan9;
    }else if(value=='10'){
      result = images.img_bulan10;
    }else if(value=='11'){
      result = images.img_bulan11;
    }else if(value=='12'){
      result = images.img_bulan12;
    }

    return result;
  }

  static currencyFormat(double value){

    FlutterMoneyFormatter fmf = new FlutterMoneyFormatter(
        amount: value,
        settings: MoneyFormatterSettings(
            symbol: 'IDR',
            thousandSeparator: '.',
            decimalSeparator: ',',
            symbolAndNumberSeparator: ' ',
            fractionDigits: 3,
        )
    );

    return fmf;

  }
}


