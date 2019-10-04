import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appConfig.colors.ColorPrimaryDark,
        //HEADER
        appBar: new AppBar(
          title: Center(
            child: Text(appConfig.strings.text_profile),
          ),
          backgroundColor: appConfig.colors.ColorPrimaryDark,
        ),
        //CONTENT
        body: Center(
          child: Text('Profil'),
        ));
  }
}
