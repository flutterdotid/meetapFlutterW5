import 'package:flutter/material.dart';
import './helper/config.dart' as appConfig;
import './widget/login.dart' as appLogin;
import './widget/app.dart' as App;
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    'Login': (context) => appLogin.LoginPage(),
    'App': (context) => App.App(),
  };

  _cekLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String counter = prefs.getString('counter');

    if(counter=="2580"){
      App.App();
    }else{
      appLogin.LoginPage();
    }


  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appConfig.strings.app_title,
        home: App.App(),
        routes: routes
    );
  }

}

