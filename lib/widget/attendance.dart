import 'package:flutter/material.dart';
import '../helper/config.dart' as appConfig;

class Attendance extends StatelessWidget {
  
  final data_absen_tgl = appConfig.datas.data_absen_tgl;
  final data_absen_status = appConfig.datas.data_absen_status;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appConfig.colors.ColorPrimaryDark,
      body: new Container(
        child: ListView.builder(
          itemCount: data_absen_tgl.length,
            itemBuilder: (context, index){
              
              final absen_tgl = data_absen_tgl[index];
              final absen_status = appConfig.absen.findAbsenStatus(data_absen_status[index]);
              final absen_icon = appConfig.absen.findAbsenIcon(data_absen_status[index]);
              
              return Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(color: appConfig.colors.ColorPrimary),
                child: ListTile(
                  //POSISI KANAN
                  trailing: Text(
                      absen_tgl,
                    style: TextStyle(color: appConfig.colors.ColorTeks),
                  ),
                  
                  //POSISI TENGAH
                  title: Text(
                    absen_status,
                    style: TextStyle(color: appConfig.colors.ColorTeks),
                  ),

                  subtitle: Text(
                    absen_status,
                    style: TextStyle(color: appConfig.colors.ColorTeks),
                  ),
                  
                  //POSISI KIRI
                  leading: Image.asset(absen_icon),
                ),
              );
            }
        ),
      ),
    );
  }
}


