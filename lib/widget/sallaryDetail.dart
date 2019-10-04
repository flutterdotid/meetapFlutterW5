import 'package:flutter/material.dart';
import '../model/Sallary.dart';
import '../helper/config.dart' as appConfig;
import '../helper/URLLauncher.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class sallaryDetail extends StatelessWidget {
  final Sallary sallary;
  sallaryDetail({this.sallary});

  @override
  Widget build(BuildContext context) {

    FlutterMoneyFormatter netIncome = FlutterMoneyFormatter(
        amount: sallary.net_income.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));

    FlutterMoneyFormatter attendance = FlutterMoneyFormatter(
        amount: sallary.attendance.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));

    FlutterMoneyFormatter overtime = FlutterMoneyFormatter(
        amount: sallary.overtime.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));

    FlutterMoneyFormatter income = FlutterMoneyFormatter(
        amount: sallary.income.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));

    FlutterMoneyFormatter tax = FlutterMoneyFormatter(
        amount: sallary.tax.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));

    FlutterMoneyFormatter loan = FlutterMoneyFormatter(
        amount: sallary.loan.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));

    FlutterMoneyFormatter deductions = FlutterMoneyFormatter(
        amount: sallary.deductions.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));


    FlutterMoneyFormatter basicSallary = FlutterMoneyFormatter(
        amount: sallary.basic_sallary.toDouble(),
        settings: MoneyFormatterSettings(
            symbol: 'Rp.', fractionDigits: 0, thousandSeparator: '.'));

    return new Scaffold(
        backgroundColor: appConfig.colors.ColorPrimaryDark,
        appBar: new AppBar(
          title: new Text(sallary.periode),
          backgroundColor: appConfig.colors.ColorPrimaryDark,
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                appConfig.absen.findMonthIcon(sallary.periode.substring(6, 7)),
              ),
            )
          ],
        ),
        body: new ListView(children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(32.0),
            child: Table(
              //border: TableBorder.all(width: 1.0, color: Colors.greenAccent),
              children: [

                //NIK
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'NIK',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + sallary.nik,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //NAMA
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'NAMA',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + sallary.nama,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //BASIC SALLARY
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'BASIC SALLARY',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + basicSallary.output.symbolOnLeft,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //ATTENDANCE
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'ATTENDANCE',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + attendance.output.symbolOnLeft,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //OVERTIME
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'OVERTIME',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + overtime.output.symbolOnLeft,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //INCOME
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'INCOME',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + income.output.symbolOnLeft,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //TAX
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'TAX',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + tax.output.symbolOnLeft,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //LOAN
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'LOAN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + loan.output.symbolOnLeft,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //DEDUCTIONS
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'DEDUCTIONS',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + deductions.output.symbolOnLeft,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //NET INCOME
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      'NET INCOME',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new Text(
                      " : " + " " + netIncome.output.symbolOnLeft,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),

                //BUTTON
                TableRow(children: [
                  TableCell(
                    child: new Text(
                      '',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TableCell(
                    child: new RaisedButton(
                        onPressed: (){
                          URLLauncher().launchURL('https://www.klikbca.com/');
                        },
                      child: Text(
                        'Cek Rekening',
                        style: TextStyle(color: appConfig.colors.ColorTeks),
                      ),
                      color: appConfig.colors.ColorButton,
                    ),
                  )
                ]),





              ],
            ),
          )
        ]));
  }
}
