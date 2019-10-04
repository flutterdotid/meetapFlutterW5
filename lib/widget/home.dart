import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: appConfig.colors.ColorPrimaryDark,
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[

          //PROFILE
          new customGrid(
            icon: appConfig.icons.icon_profile,
            iconTitle: appConfig.strings.text_profil,
            iconColor: appConfig.colors.ColorIcon,
            textColor: appConfig.colors.ColorTeks,
            iconSize: 80.0,
            urlWidget: '/urlProfile',
          ),

          //NEW EMPLOYEE
          new customGrid(
            icon: Icons.people,
            iconTitle: 'New Employee',
            iconColor: appConfig.colors.ColorIcon,
            textColor: appConfig.colors.ColorTeks,
            iconSize: 80.0,
            urlWidget: '/urlnewEmp',
          ),


          //NEW USER
          new customGrid(
            icon: Icons.people_outline,
            iconTitle: 'New User',
            iconColor: appConfig.colors.ColorIcon,
            textColor: appConfig.colors.ColorTeks,
            iconSize: 80.0,
            urlWidget: '/urlnewUser',
          ),

          //SALLARY
          new customGrid(
            icon: Icons.monetization_on,
            iconTitle: 'Sallary',
            iconColor: appConfig.colors.ColorIcon,
            textColor: appConfig.colors.ColorTeks,
            iconSize: 80.0,
            urlWidget: '/urlSallary',
          ),

          //LOCK
          new customGrid(
            icon: Icons.lock,
            iconTitle: 'Lock',
            iconColor: appConfig.colors.ColorIcon,
            textColor: appConfig.colors.ColorTeks,
            iconSize: 80.0,
            urlWidget: '/urlLock',
          ),



        ],
      ),
    );
  }
}

class customGrid extends StatelessWidget {
  final IconData icon;
  final String iconTitle, urlWidget;
  final Color iconColor, textColor;
  final double iconSize;

  customGrid(
      {this.urlWidget,
        this.textColor,
        this.iconTitle,
        this.iconColor,
        this.iconSize,
        this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      color: appConfig.colors.ColorButton,
      child: RaisedButton(
        color: appConfig.colors.ColorButton,
        child: Column(
          children: <Widget>[

            Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),

            Text(
              iconTitle,
              style: TextStyle(color: textColor,fontSize: 10.0),
            ),

          ],
        ),
        onPressed: (){
          Navigator.pushNamed(context, urlWidget);
        },
      ),
    );
  }
}
