import 'Sallary.dart';

class SallaryList{
  List<Sallary> sallarys = new List();

  SallaryList({ this.sallarys });

  factory SallaryList.fromJson(List<dynamic> parsedJson){
    List<Sallary> sallarys = new List<Sallary>();
    sallarys = parsedJson.map((i) => Sallary.fromJson(i)).toList();
    return new SallaryList(
      sallarys: sallarys,
    );
  }
}