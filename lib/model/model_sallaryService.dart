import 'model_sallaryList.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class model_sallaryService {
  Future<String> _loadSallaryAsset() async {
    return await rootBundle.loadString('assets/data/sallary.json');
  }

  Future<model_sallaryList> loadSallary() async {
    String jsonString = await _loadSallaryAsset();
    final jsonResponse = json.decode(jsonString);
    model_sallaryList listSallary =
        new model_sallaryList.fromJson(jsonResponse);
    return listSallary;
  }
}
