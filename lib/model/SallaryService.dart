import 'SallaryList.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class SallaryService{

  Future<String> _loadSallaryAsset() async{
    return await rootBundle.loadString('assets/data/sallary.json');
  }

  Future<SallaryList> loadSallary() async{
    String jsonString = await _loadSallaryAsset();
    final jsonResponse = json.decode(jsonString);
    SallaryList sallarys = new SallaryList.fromJson(jsonResponse);
    return sallarys;
  }
}