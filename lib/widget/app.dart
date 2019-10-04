import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;

import 'profile.dart' as widgetProfile;
import 'attendance.dart' as widgetAttendance;
import 'sallary.dart' as widgetSallary;
import 'home.dart' as widgetHome;
import 'newEmp.dart' as widgetNewEmp;
import 'newUser.dart' as widgetNewUser;
import 'login.dart' as widgetLogin;

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appConfig.strings.app_name,
      home: Layout(),
      //NAVIGATION ROUTE
      routes: <String,WidgetBuilder>{
        '/urlProfile':(BuildContext context) => widgetProfile.Profil(),
        '/urlSallary':(BuildContext context) => widgetSallary.SallaryWidget(),
        '/urlAttendance':(BuildContext context) => widgetAttendance.Attendance(),
        '/urlnewEmp':(BuildContext context) => widgetNewEmp.newEmp(),
        '/urlnewUser':(BuildContext context) => widgetNewUser.newUser(),
        '/urlLock':(BuildContext context) => widgetLogin.LoginPage(),
      }
    );
  }
}

class Layout extends StatefulWidget{
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin{

  TabController controller;

  @override

  void initState(){
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(

      //HEADER
      appBar: new AppBar(
        backgroundColor: appConfig.colors.ColorPrimaryDark,
        title: new Text(appConfig.strings.app_title),
        leading: Container(
          margin: EdgeInsets.all(10.0),
          child: Image.asset(appConfig.images.img_logo),
        ),
      ),

      //CONTENT
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new widgetHome.Home(),
            new widgetAttendance.Attendance(),
            new widgetSallary.SallaryWidget(),
          ]
      ),

      //BOTTOM NAVIGATION BAR
      bottomNavigationBar: new Material(
        color: appConfig.colors.ColorPrimaryDark,
        child: TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(appConfig.icons.icon_home),
                text: appConfig.strings.text_home,
              ),
              new Tab(
                icon: new Icon(appConfig.icons.icon_attendance),
                text: appConfig.strings.text_attendance,
              ),
              new Tab(
                icon: new Icon(appConfig.icons.icon_sallary),
                text: appConfig.strings.text_sallary,
              ),
            ]
        ),
      ),

      //FLOATING ACTION BUTTON
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){
//          Navigator.pushNamed(context, '/urlProfile');
//        },
//        child: Icon(
//            appConfig.icons.icon_profile
//        ),
//        backgroundColor: appConfig.colors.ColorButton,
//      ),

    );
  }

}


