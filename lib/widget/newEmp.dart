import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../helper/URLLauncher.dart';
import '../helper/config.dart' as appConfig;

class newEmp extends StatefulWidget {
  newEmpState createState() => newEmpState();
}
class newEmpState extends State<newEmp> {
  //VARIABEL
  List data;
  String kriteria = '';

  //GET DATA
  Future<String> getKaryawan(String kriteria) async {
    String method = 'karyawan';
    String url =
        appConfig.strings.base_url + method + '?token=' + appConfig.strings.token + "&kriteria=" + kriteria;
    var res = await http
        .get(Uri.encodeFull(url), headers: {'accept': 'application/json'});
    setState(() {
      var content = json.decode(res.body);
      data = content['data'];
    });
    return 'success!';
  }

  //INIT
  @override
  void initState() {
    super.initState();
    this.getKaryawan('');
  }

  Widget build(context) {
    return MaterialApp(
        color: appConfig.colors.ColorPrimaryDark,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: appConfig.colors.ColorPrimaryDark,

          //HEADER
          appBar: AppBar(
            backgroundColor: appConfig.colors.ColorPrimaryDark,

            //SEARCH BAR
            title: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                hoverColor: Colors.green,
                focusColor: Colors.yellow,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: 'Search here',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              //ACTION ON CHANGE
              onChanged: (String value) {
                setState(() {
                  kriteria = value;
                  this.getKaryawan(kriteria);
                });
              },
            ),
          ),

          //CONTENT
          body: dataList(context),
        ));
  }

  Widget dataList(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: appConfig.colors.ColorPrimaryDark),
      margin: EdgeInsets.all(10.0),

      //LIST VIEW
      child: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {

          //VARIABEL
          String alamatImage = "";
          data[index]['karFoto'] != "" ? alamatImage = appConfig.strings.imageUrl + data[index]['karFoto'] : alamatImage = appConfig.strings.imageUrlEmpty;
          final String alamatWA = 'https://api.whatsapp.com/send?phone='+ data[index]['karHp'] +'&text=Halo%20' + data[index]['karNama'];

          return Container(
              decoration:
                  BoxDecoration(color: appConfig.colors.ColorPrimaryDark),

              //CARD
              child: Card(
                color: appConfig.colors.ColorPrimary,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    //LIST TILE
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),

                      //ACTIONS ON TAP
                      onTap: () {
                        URLLauncher().launchURL(alamatWA);
                      },

                      //FOTO
                      leading: Container(
                          padding: EdgeInsets.only(right: 12.0),
                          decoration: new BoxDecoration(
                              border: new Border(
                                  right: new BorderSide(
                                      width: 1.0, color: Colors.white24))),
                          child: Hero(
                            tag: "avatar_" + data[index]['karNama'],
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: NetworkImage(alamatImage),
                            ),
                          )),

                      //NAMA
                      title: Text(
                        data[index]['karNama'],
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: appConfig.colors.ColorTeks),
                      ),

                      //ICON CHAT
                      trailing: Icon(Icons.chat,
                          color: Colors.white, size: 30.0),

                      //SUBTITLE
                      subtitle: Column(
                        children: <Widget>[

                          //NIK
                          Row(
                            children: <Widget>[
                              Text(
                                'NIK : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: appConfig.colors.ColorTeks),
                              ),
                              Text(
                                data[index]['karNik'].toString().isNotEmpty
                                    ? data[index]['karNik']
                                    : '-',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15.0,
                                    color: appConfig.colors.ColorTeks),
                              ),
                            ],
                          ),

                          //HP
                          Row(
                            children: <Widget>[
                              Text(
                                'HP : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: appConfig.colors.ColorTeks),
                              ),
                              Text(
                                data[index]['karHp'] != null
                                    ? data[index]['karHp']
                                    : '-',
                                style: TextStyle(
                                    color: appConfig.colors.ColorTeks),
                              ),
                            ],
                          ),



                        ],
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
