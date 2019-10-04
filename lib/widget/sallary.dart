import 'package:flutter/material.dart';
import '../model/Sallary.dart';
import '../model/SallaryList.dart';
import '../model/SallaryService.dart';
import './sallaryDetail.dart';
import '../helper/config.dart' as appConfig;
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

//WIDGET
class SallaryWidget extends StatefulWidget {
  @override
  _SallaryWidgetState createState() {
    return _SallaryWidgetState();
  }
}

//STATE
class _SallaryWidgetState extends State<SallaryWidget> {
  SallaryList _sallary = new SallaryList();

  //INIT
  @override
  void initState() {
    super.initState();
    _sallary.sallarys = new List();
    _getSallary();
  }

  //GET SALLARY
  void _getSallary() async {
    SallaryList sallarys = await SallaryService().loadSallary();
    setState(() {
      for (Sallary data in sallarys.sallarys) {
        this._sallary.sallarys.add(data);
      }
    });
  }

  //SCAFFOLD
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appConfig.colors.ColorPrimaryDark,
      body: _buildList(context),
      resizeToAvoidBottomPadding: false,
    );
  }

  //LISTVIEW
  Widget _buildList(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: this
          ._sallary
          .sallarys
          .map((data) => _buildListItem(context, data))
          .toList(),
    );
  }

  //ITEM LISTVIEW
  Widget _buildListItem(BuildContext context, Sallary sallary) {
    //FORMAT CURRENCY
    FlutterMoneyFormatter netIncome = FlutterMoneyFormatter(
        amount: sallary.net_income.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));

    //CARD
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),

          //LEADING
          leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Image.asset(appConfig.absen
                  .findMonthIcon(sallary.periode.substring(6, 7)))),

          //TITLE
          title: Text(
            sallary.nik + ' - ' + sallary.nama.toUpperCase(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),

          //SUBTITLE
          subtitle: Text(
            "NET INCOME : " + netIncome.output.symbolOnLeft,
            style: TextStyle(color: Colors.white),
          ),

          //TRAILING
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => new sallaryDetail(sallary: sallary)));
          },
        ),
      ),
    );
  }
}
