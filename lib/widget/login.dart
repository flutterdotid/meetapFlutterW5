import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {

  //UNTUK TEXT FIELD
  final _pinCodeController = TextEditingController();
  //KEY UNTUK SNACKBAR
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //SHARED PREFERENCES
  SharedPreferences sharedPreferences;
  bool alreadyLogin = false;

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //String counter = prefs.getString('counter');
    await prefs.setString('counter', _pinCodeController.value.text);
  }

  @override
  Widget build(BuildContext context) {

    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: appConfig.sizes.bigRadius,
      child: Image.asset(appConfig.images.img_logo),
    );

    final pinCode = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.phone,
      maxLength: 4,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
          hintText: appConfig.strings.text_login_hint,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          hintStyle: TextStyle(
              color: Colors.white
          )
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: (){
          if(_pinCodeController.value.text=="2580"){

            _incrementCounter();
            Navigator.of(context).pushNamed('App');
          }else{

            //SNACKBAR
            SnackBar snackBar = SnackBar(
                content: Text('Password Error'),
              backgroundColor: appConfig.colors.ColorButton,
            );
            scaffoldKey.currentState.showSnackBar(snackBar);
          }},
        padding: EdgeInsets.all(12),
        color: appConfig.colors.ColorPrimaryDark,
        child: Text(appConfig.strings.text_login, style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: appConfig.colors.ColorPrimaryDark,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: appConfig.sizes.bigRadius),
            pinCode,
            SizedBox(height: appConfig.sizes.buttonHeight),
            loginButton
          ],
        ),
      ),
    );
  }
}