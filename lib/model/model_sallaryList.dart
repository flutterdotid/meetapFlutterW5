import 'model_sallary.dart';

class model_sallaryList {
  List<model_sallary> listSallary = new List();
  model_sallaryList({this.listSallary});

  factory model_sallaryList.fromJson(List<dynamic> parsedJson) {
    List<model_sallary> listSallary = new List<model_sallary>();
    listSallary = parsedJson.map((i) => model_sallary.fromJson(i)).toList();
    return new model_sallaryList(
      listSallary: listSallary,
    );
  }
}
