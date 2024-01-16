import 'package:todo_app/screens/home/model/home_model.dart';
import 'package:hive/hive.dart';

final tasks = [ 
  HomeModel(title: "Shoping"),
  HomeModel(title: "workout")
];

class HomeData {
  late Box box;
  final tasks = [];

  void loadList(Box box){
    box.put("list", tasks);
  }

  List<dynamic> updateList(Box box){
    List<dynamic> returnList;
    returnList = box.get("list");
    return returnList;
  }


}